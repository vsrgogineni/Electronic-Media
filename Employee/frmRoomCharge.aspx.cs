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

public partial class Employee_frmRoomCharge : System.Web.UI.Page
{
    int time, time1, time2;
    string time3;

    AddPatientBL pat = new AddPatientBL();
    RoomMasterBL room = new RoomMasterBL();
    RoomChargeBL charge = new RoomChargeBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlPatientCode.DataSource = pat.ShowPatientCode();
            ddlPatientCode.DataTextField = "patient_code";
            ddlPatientCode.DataBind();
            ddlPatientCode.Items.Insert(0, "---Select---");

            ddlRoomCode.DataSource = room.ShowRoom();
            ddlRoomCode.DataTextField = "room_code";
            ddlRoomCode.DataBind();
            ddlRoomCode.Items.Insert(0, "---Select---");
            time = System.DateTime.Now.TimeOfDay.Hours;
            time1 = System.DateTime.Now.TimeOfDay.Minutes;
            time2 = System.DateTime.Now.TimeOfDay.Seconds;
            time3 = Convert.ToString(time + ":" + time1 + ":" + time2);
            txtTime.Text = time3;
        }
    }
    protected void ddlRoomCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            room.Code = ddlRoomCode.SelectedItem.Text.Trim();
            DataSet ds = new DataSet();
            ds = room.ShowRoomByCode();
            txtName.Text = ds.Tables[0].Rows[0][0].ToString();
            txtCharge.Text = ds.Tables[0].Rows[0][1].ToString();
            lblMsg.Text = "";
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Room...!";
            txtCharge.Text = "";
            txtName.Text = "";
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            time = System.DateTime.Now.TimeOfDay.Hours;
            time1 = System.DateTime.Now.TimeOfDay.Minutes;
            time2 = System.DateTime.Now.TimeOfDay.Seconds;
            time3 = Convert.ToString(time + ":" + time1 + ":" + time2);

            charge.Code = ddlPatientCode.SelectedItem.Text.Trim();
            charge.Roomcode = ddlRoomCode.SelectedItem.Text.Trim();
            charge.Date = GMDatePicker1.Date.Date;
            charge.Time = time3+ddlTime.SelectedItem.Text.Trim();
            charge.Charge = int.Parse(txtCharge.Text.Trim());
            room.Code = ddlRoomCode.SelectedItem.Text.Trim();
            room.UpdateRoom();
            charge.InsertRoomCharge();
            lblMsg.Text = "Inserted...!";

        }
        catch (Exception ex)
        {
          lblMsg.Text=ex.Message.ToString();
        }
        
    }
}
