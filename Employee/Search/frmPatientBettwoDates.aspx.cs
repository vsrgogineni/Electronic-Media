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

public partial class Admin_Search_frmPatientBettwoDates : System.Web.UI.Page
{
    AddPatientBL patient = new AddPatientBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
        }
    }
    protected void btnShow_Click(object sender, EventArgs e)
    {
        patient.Date1 = GMDatePicker1.Date;
        patient.Date2 = GMDatePicker2.Date;
        GridView1.DataSource = patient.ShowPatientInfoBetweenDate();
        GridView1.DataBind();

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            patient.Date1 = GMDatePicker1.Date;
            patient.Date2 = GMDatePicker2.Date;
            GridView1.DataSource = patient.ShowPatientInfoBetweenDate();
            GridView1.DataBind();
        }
        catch (Exception)
        {
            
            throw;
        }
    }
}
