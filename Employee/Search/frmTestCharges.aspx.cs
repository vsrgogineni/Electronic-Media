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

public partial class Admin_Search_frmTestCharges : System.Web.UI.Page
{
    TestChargeBL test = new TestChargeBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
        }
    }
    protected void btnShow_Click(object sender, EventArgs e)
    {
        try
        {
            test.Date = GMDatePicker1.Date.Date;
            GridView1.DataSource = test.ShowTestInfoByDate();
            GridView1.DataBind();
            lblMsg.Text = "";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.ToString();
        }
       
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            test.Date = GMDatePicker1.Date.Date;
            GridView1.DataSource = test.ShowTestInfoByDate();
            GridView1.DataBind();
            lblMsg.Text = "";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.ToString();
        }
    }
}
