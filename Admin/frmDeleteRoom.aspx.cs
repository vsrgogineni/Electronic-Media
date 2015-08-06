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

public partial class Admin_frmDeleteRoom : System.Web.UI.Page
{
    RoomMasterBL room = new RoomMasterBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlRoom.DataSource = room.ShowRoom();
            ddlRoom.DataTextField = "Room_Code";
            ddlRoom.DataValueField = "Room_Id";
            ddlRoom.DataBind();
            ddlRoom.Items.Insert(0, "---Select---");
        }

    }
    protected void ddlRoom_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            room.Id = int.Parse(ddlRoom.SelectedValue);
            DataSet ds = new DataSet();
            ds = room.ShowRoomByID();
            txtCode.Text = ds.Tables[0].Rows[0][0].ToString();
            txtDesc.Text = ds.Tables[0].Rows[0][1].ToString();

        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Room Name...!";
            txtDesc.Text = "";
            txtCode.Text = "";
        }
       
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            room.Id = int.Parse(ddlRoom.SelectedValue);
            room.DeleteRoom();
            lblMsg.Text = "Deleted...!";
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Room Name...!";
        }
    }
}
