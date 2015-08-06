using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Employee_frmAllDeletion : System.Web.UI.Page
{
    AddPatientBL patient = new AddPatientBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlPatientCode.DataSource = patient.ShowPatientCodeByStatus();
            ddlPatientCode.DataTextField = "patient_code";
            ddlPatientCode.DataBind();
        }

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            patient.Code = ddlPatientCode.SelectedItem.Text.Trim();
            patient.DeletePatientPermanently();
            lblMsg.Text = "Deleted...!";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }
    }
}
