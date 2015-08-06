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

public partial class User_Control_LoginLogoutWebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        else
        {
            lblMsg.Text = "<b><font color=silver>Welcome</font></b> " + " " + Session["Name"].ToString();
            LoginStatus1.LoginText = "Logout";
        }
        
       
    }
    protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
    {
        Session.Abandon();
        Session["Name"].ToString().Remove(0);
        Response.Redirect("~/Default.aspx");
    }
}
