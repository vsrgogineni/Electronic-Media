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

public partial class Admin_AdminUserControl_AdminMenuUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/Default.aspx");
    }
}
