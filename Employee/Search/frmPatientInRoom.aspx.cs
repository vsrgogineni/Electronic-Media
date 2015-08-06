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

public partial class Admin_Search_frmPatientInRoom : System.Web.UI.Page
{
    RoomChargeBL room = new RoomChargeBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlRoomCode.DataSource = room.ShowPatientRoomCode();
            ddlRoomCode.DataTextField = "room_code";
            ddlRoomCode.DataBind();
            ddlRoomCode.Items.Insert(0,"---Select---");
        }

    }
    protected void ddlRoomCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            room.Roomcode = ddlRoomCode.SelectedItem.Text.Trim();
            DataSet ds = new DataSet();
            ds = room.ShowRoomNameByCode();
            lblName.Text = ds.Tables[0].Rows[0][0].ToString();
            lblMsg.Text = "";
            GridView1.DataSource = room.ShowPatientInfoByRoomCode();
            GridView1.DataBind();
            lblMsg.Text = "";
        }
        catch (Exception ex)
        {

            lblMsg.Text = ex.Message.ToString();
            lblMsg.Text = "Plz Select Room Code...!";
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            room.Roomcode = ddlRoomCode.SelectedItem.Text.Trim();
            GridView1.DataSource = room.ShowPatientInfoByRoomCode();
            GridView1.DataBind();
            lblMsg.Text = "";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
            lblMsg.Text = "Plz Select Room Code...!";
        }
    }
}
