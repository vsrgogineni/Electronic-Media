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

public partial class Admin_Search_frmMedicineBetweenDates : System.Web.UI.Page
{
    MedicineMasterBL meidicine = new MedicineMasterBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
    }
    protected void btnShow_Click(object sender, EventArgs e)
    {
        meidicine.Mfgdate = GMDatePicker1.Date;
        meidicine.Expdate = GMDatePicker2.Date;
        GridView1.DataSource = meidicine.ShowAllMedicineByDate();
        GridView1.DataBind();

    }
}
