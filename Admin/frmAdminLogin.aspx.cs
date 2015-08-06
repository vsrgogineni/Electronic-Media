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

public partial class Admin_frmAdminLogin : System.Web.UI.Page
{
    LoginInfoBL login = new LoginInfoBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Image1.Visible = false;
            lblMsg.Visible = false;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtName.Text.Length > 0 && txtPassword.Text.Length > 0)
        {
            login.Name = txtName.Text.Trim();
            login.Password = txtPassword.Text.Trim();
            if (login.CheckAdmininfo() == true)
            {
                Session["Name"] = txtName.Text.Trim();
                Response.Redirect("~/Admin/frmAdminHome.aspx");
            }
            else
            {
                Image1.Visible = true;
                lblMsg.Visible = true;
                lblMsg.Text = "Invalid Username or Password...!";
                txtName.Focus();
            }
        }
    }
}
