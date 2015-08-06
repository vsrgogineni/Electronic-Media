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

public partial class Admin_frmStateMaster : System.Web.UI.Page
{
    CountryBusinessLayer country = new CountryBusinessLayer();
    StateBL state = new StateBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            DdlCountry.DataSource = country.GetCountry();
            DdlCountry.DataTextField = "Country_Name";
            DdlCountry.DataValueField = "Country_Id";
            DdlCountry.DataBind();
        }
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            state.StateName = txtName.Text.Trim();
            state.StateDesc = txtDesc.Text.Trim();
            state.CountryId = int.Parse(DdlCountry.SelectedValue);
            state.InsertNewState();
            lblMsg.Text = "State Inserted Successfully...!";
            txtName.Focus();
        }
        catch (Exception ex)
        {

            lblMsg.Text = ex.Message.ToString();
        }
        
    }
    protected void BtnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtDesc.Text = "";
        lblMsg.Text = "";
        txtName.Focus();
    }
   
}
