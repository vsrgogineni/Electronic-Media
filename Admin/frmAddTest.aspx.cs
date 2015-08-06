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

public partial class Admin_frmAddTest : System.Web.UI.Page
{
    TestMasterBL test = new TestMasterBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            test.Code = txtCode.Text.Trim();
            test.Name = txtName.Text.Trim();
            test.Desc = txtDesc.Text.Trim();
            test.Charge = Convert.ToInt32(txtCharge.Text.Trim());
            test.InsertTest();
            lblMsg.Text = "Inserted...!";
        }
        catch (Exception )
        {
           // lblMsg.Text = ex.Message.ToString();
            lblMsg.Text = "Already Present...!";
            txtCode.Focus();
            
        }
       
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtCode.Text = "";
        txtCharge.Text = "";
        txtDesc.Text = "";
        txtName.Text = "";
        lblMsg.Text = "";
        txtCode.Focus();
    }
}
