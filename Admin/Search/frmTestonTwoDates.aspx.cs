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

public partial class Admin_Search_frmTestonTwoDates : System.Web.UI.Page
{
    TestChargeBL test = new TestChargeBL();
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
            test.Date1 = GMDatePicker1.Date;
            test.Date2 = GMDatePicker2.Date;
            GridView1.DataSource = test.SpShowTestBetweenDate();
            GridView1.DataBind();
        }
        catch (Exception)
        {
            
            throw;
        }

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            test.Date1 = GMDatePicker1.Date;
            test.Date2 = GMDatePicker2.Date;
            GridView1.DataSource = test.SpShowTestBetweenDate();
            GridView1.DataBind();
        }
        catch (Exception)
        {
            
            throw;
        }
    }
}
