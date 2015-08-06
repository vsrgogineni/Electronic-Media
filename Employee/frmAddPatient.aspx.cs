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

public partial class Employee_frmAddInPatient : System.Web.UI.Page
{
    //int time, time1, time2;
    //string time3;
    CountryBusinessLayer country = new CountryBusinessLayer();
    StateBL state = new StateBL();
    CityBL city = new CityBL();
    DoctorMasterBL doctor = new DoctorMasterBL();
    TestMasterBL test = new TestMasterBL();
    RoomMasterBL room = new RoomMasterBL();
    AddPatientBL patient = new AddPatientBL();
    DiseaseMasterBL dis = new DiseaseMasterBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlCountry.DataSource = country.GetCountry();
            ddlCountry.DataTextField = "Country_Name";
            ddlCountry.DataValueField = "Country_id";
            ddlCountry.DataBind();
            ddlCountry.Items.Insert(0, "---Select---");

            ddlDrCode.DataSource = doctor.ShowDoctor();
            ddlDrCode.DataTextField = "doctor_code";
            //ddlDrCode.DataValueField = "doctor_code";
            ddlDrCode.DataBind();
            ddlDrCode.Items.Insert(0, "---Select---");

            ddlTestCode.DataSource = test.ShowTest();
            ddlTestCode.DataTextField = "test_code";
            //ddlTestCode.DataValueField = "test_code";
            ddlTestCode.DataBind();
            ddlTestCode.Items.Insert(0, "---Select---");

            ddlRoomCode.DataSource = room.ShowRoom();
            ddlRoomCode.DataTextField = "room_code";
            ddlRoomCode.DataBind();
            ddlRoomCode.Items.Insert(0, "---Select---");

            //time = System.DateTime.Now.TimeOfDay.Hours;
            //time1 = System.DateTime.Now.TimeOfDay.Minutes;
            //time2 = System.DateTime.Now.TimeOfDay.Seconds;
            //time3 =Convert.ToString(time + ":" + time1 + ":" + time2);
            //txtTime.Text = time3;
          
        }

    }
    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            state.CountryId = int.Parse(ddlCountry.SelectedValue);
            ddlState.DataSource = state.GetStateByCountryId();
            ddlState.DataTextField = "State_Name";
            ddlState.DataValueField = "State_Id";
            ddlState.DataBind();
            ddlState.Items.Insert(0, "---Select---");
            lblMsg.Text = "";
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Country...!";
            ddlCountry.Focus();
        }
    }
    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            city.StateId = int.Parse(ddlState.SelectedValue);
            ddlCity.DataSource = city.GetCityByState();
            ddlCity.DataTextField = "City_Name";
            ddlCity.DataValueField = "City_Id";
            ddlCity.DataBind();
            ddlCity.Items.Insert(0, "---Select---");
            lblMsg.Text = "";
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select State...!";
            ddlState.Focus();
            
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            //time = System.DateTime.Now.TimeOfDay.Hours;
            //time1 = System.DateTime.Now.TimeOfDay.Minutes;
            //time2 = System.DateTime.Now.TimeOfDay.Seconds;
            //time3 = Convert.ToString(time + ":" + time1 + ":" + time2);

            patient.Code = txtCode1.Text + txtCode2.Text.Trim();
            patient.Name = txtPname.Text.Trim();
            patient.Hname = txtHname.Text.Trim();
            patient.Complaint = txtComplain.Text.Trim();
            patient.Sex = ddlSex.SelectedItem.Text;
            patient.Address = txtAddress.Text.Trim();
            patient.Country = ddlCountry.SelectedItem.Text.Trim();
            patient.State = ddlState.SelectedItem.Text.Trim();
            patient.City = ddlCity.SelectedItem.Text.Trim();
            patient.Age = int.Parse(txtAge.Text.Trim());
            patient.Iopatient = ddlInOut.SelectedItem.Text.Trim();
            patient.Doctorcode = ddlDrCode.SelectedItem.Text.Trim();
            patient.Admitdate=GMDatePicker1.Date.Date;
            patient.Admittime = txtTime.Text.Trim()+ ddlTime.SelectedItem.Text.Trim();
            patient.Testcode = "";// ddlTestCode.SelectedItem.Text.Trim();
            patient.Roomcode = "";// ddlRoomCode.SelectedItem.Text.Trim();
            patient.Advance = int.Parse(txtAdvance.Text.Trim());
            patient.Condition = txtCondition.Text.Trim();
            patient.AddPatient();
            dis.Name = txtComplain.Text.Trim();
            dis.Doccode = ddlDrCode.SelectedItem.Text.Trim();
            dis.InsertDisease();
            lblMsg.Text = "Inserted...!";

        }
        catch (Exception ex)
        {

            lblMsg.Text = ex.Message.ToString();
        }
    }
}
