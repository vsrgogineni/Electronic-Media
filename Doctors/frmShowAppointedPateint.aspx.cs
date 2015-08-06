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

public partial class Doctors_frmShowAppointedPateint : System.Web.UI.Page
{
   
    LoginInfoBL login = new LoginInfoBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["Amount"] = 0;
        }
    }
    protected void btnShow_Click(object sender, EventArgs e)
    {
        try
        {
            login.Name = Session["Name"].ToString();
            login.Password = Session["Password"].ToString();
            login.Date = GMDatePicker1.Date;
            GridView1.DataSource = login.ShowPatientByDoctor();
            GridView1.DataBind();
        }
        catch (Exception)
        {
            
            throw;
        }

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
       
    }
}
