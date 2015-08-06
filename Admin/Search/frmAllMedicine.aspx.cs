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

public partial class Admin_Search_frmAllMedicine : System.Web.UI.Page
{
    MedicineMasterBL medicine = new MedicineMasterBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        //if (!IsPostBack)
        //{
        //    ddlMedicine.DataSource = medicine.ShowMedicine();
        //    ddlMedicine.DataTextField = "medicine_name";
        //    ddlMedicine.DataBind();
        //    ddlMedicine.Items.Insert(0, "---Select---");
        //}
    }
    protected void btnShow_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = medicine.ShowAllMedicine();
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataSource = medicine.ShowAllMedicine();
        GridView1.DataBind();
    }
}
