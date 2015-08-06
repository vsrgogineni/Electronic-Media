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

public partial class Admin_Search_frmDiagnosis : System.Web.UI.Page
{
    AddPatientBL pat = new AddPatientBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlCode.DataSource = pat.ShowPatientCode();
            ddlCode.DataTextField = "patient_code";
            ddlCode.DataBind();
            ddlCode.Items.Insert(0, "---Select---");
        }

    }
    protected void ddlCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            pat.Code = ddlCode.SelectedItem.Text.Trim();
            DataList1.DataSource = pat.ShowPatientInfo();
            DataList1.DataBind();
        }
        catch (Exception)
        {
            
            throw;
        }
    }
}
