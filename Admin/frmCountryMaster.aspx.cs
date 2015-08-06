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

public partial class Admin_frmCountryMaster : System.Web.UI.Page
{
    CountryBusinessLayer country = new CountryBusinessLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        country.CountryName = txtName.Text.Trim();
        country.CountryDesc = txtDesc.Text.Trim();
        country.InsertCountry();
        lblMsg.Text = "Country Inserted Successfully...!";
        txtName.Focus();
    }
    protected void BtnClear_Click(object sender, EventArgs e)
    {
        txtName.Text="";
        txtDesc.Text="";
        lblMsg.Text = "";
        txtName.Focus();

    }
   
}
