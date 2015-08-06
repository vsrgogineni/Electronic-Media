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

public partial class Admin_frmAddRoom : System.Web.UI.Page
{
    RoomMasterBL room = new RoomMasterBL();
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
            room.Code = txtNo.Text.Trim();
            room.Name = txtName.Text.Trim();
            room.Desc = txtDesc.Text.Trim();
            room.Charge =int.Parse(txtCharge.Text.Trim());
            room.InsertRoom();
            lblMsg.Text = "Inserted...!";

        }
        catch (Exception)
        {
            lblMsg.Text = "Already Present...!";
        }

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtCharge.Text = "";
        txtDesc.Text = "";
        txtName.Text = "";
        txtNo.Text = "";
        lblMsg.Text = "";
        txtNo.Focus();
    }
}
