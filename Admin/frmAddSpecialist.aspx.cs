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

public partial class Admin_frmAddSpecialist : System.Web.UI.Page
{
    SpecialistMasterBL specialist = new SpecialistMasterBL();
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
            specialist.Name = txtName.Text.Trim();
            specialist.Desc = txtDesc.Text.Trim();
            specialist.InsertSpecialist();
            lblMsg.Text = "Inserted...!";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = string.Empty; ;
        txtDesc.Text = string.Empty; ;
        lblMsg.Text = string.Empty;
    }
}
