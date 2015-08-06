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

public partial class Admin_frmDeleteTest : System.Web.UI.Page
{
    TestMasterBL test = new TestMasterBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlCode.DataSource = test.ShowTest();
            ddlCode.DataTextField = "Test_Code";
            ddlCode.DataValueField = "Test_Id";
            ddlCode.DataBind();
            ddlCode.Items.Insert(0, "---Select---");
        }

    }
    protected void ddlCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            test.Id = int.Parse(ddlCode.SelectedValue);
            DataSet ds = new DataSet();
            ds = test.ShowTestByID();
            txtName.Text = ds.Tables[0].Rows[0][0].ToString();
            txtDesc.Text = ds.Tables[0].Rows[0][1].ToString();
            lblMsg.Text = "";
        }
        catch (Exception )
        {
           // lblMsg.Text = ex.Message.ToString();
           lblMsg.Text = "Plz Select Test Code...!";
            txtDesc.Text = "";
            txtName.Text = "";
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            test.Id = int.Parse(ddlCode.SelectedValue);
            test.DeleteTest();
            lblMsg.Text = "Deleted...!";
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Test Code...!";
        }
    }
}
