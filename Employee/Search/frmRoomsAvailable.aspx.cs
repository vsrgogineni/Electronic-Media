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

public partial class Admin_Search_frmRoomsAvailable : System.Web.UI.Page
{
    RoomMasterBL room = new RoomMasterBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlRoomCode.DataSource = room.ShowRoom();
            ddlRoomCode.DataTextField = "room_code";
            ddlRoomCode.DataBind();
            ddlRoomCode.Items.Insert(0, "---Select---");
        }

    }
    protected void ddlRoomCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            room.Code = ddlRoomCode.SelectedItem.Text.Trim();
            DataSet ds = new DataSet();
            ds = room.ShowStatusByCode();
            lblStatus.Text = ds.Tables[0].Rows[0][0].ToString();
            GridView1.DataSource = room.SpShowPatientInfoAccordingToRoom();
            GridView1.DataBind();
        }
        catch (Exception)
        {

            lblStatus.Text = "Plz Select Room No...!";
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            room.Code = ddlRoomCode.SelectedItem.Text.Trim();
            GridView1.DataSource = room.SpShowPatientInfoAccordingToRoom();
            GridView1.DataBind();
        }
        catch (Exception)
        {
            
            throw;
        }
    }
}
