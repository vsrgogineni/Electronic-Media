using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctors_DoctorUserControl_LoginLogoutWebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
            Response.Redirect("~/frmLogin.aspx");
        else

            lblMsg.Text = "<b><font color=silver>Welcome</font></b> " + " " + Session["Name"].ToString();

    }

    protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
    {
        Session.Abandon();
        Session["name"].ToString().Remove(0);
        Response.Redirect("~/Default.aspx");
    }
}