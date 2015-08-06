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

public partial class Admin_Search_frmPatientAdmissionDate : System.Web.UI.Page
{
    AddPatientBL patient = new AddPatientBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
    }
    protected void btnShow_Click(object sender, EventArgs e)
    {
        try
        {
            patient.Admitdate = GMDatePicker1.Date;
            GridView1.DataSource = patient.ShowPatientInfoByDate();
            GridView1.DataBind();
            lblMsg.Text = "";

        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            patient.Admitdate = GMDatePicker1.Date;
            GridView1.DataSource = patient.ShowPatientInfoByDate();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }
    }
}
