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

public partial class Employee_frmDischarge : System.Web.UI.Page
{
    DataSet ds, ds1, ds2, ds3, ds4;
    AddPatientBL patient = new AddPatientBL();
    DischargePatientBL discharge = new DischargePatientBL();
    RoomChargeBL room = new RoomChargeBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlCode.DataSource = patient.ShowPatientCode();
            ddlCode.DataTextField = "Patient_code";
            ddlCode.DataBind();
            ddlCode.Items.Insert(0, "---Select---");
        
        }
    }

    protected void ddlCode_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        try
        {
            if (ddlCode.SelectedItem.Text == "---Select---")
            {
                txtName.Text = "";
                txtHname.Text = "";
                txtComplaint.Text = "";
                txtSex.Text = "";
                txtAddress.Text = "";
                txtCountry.Text = "";
                txtState.Text = "";
                txtCity.Text = "";
                txtAge.Text = "";
                txtDrName.Text = "";
                txtAdmitDate.Text = "";
                txtAdmitTime.Text = "";
                txtRoomCode.Text = "";
                txtAdvance.Text = "0";
                txtTestCharge.Text = "0";
                txtDrCharge.Text = "0";
                txtRoomCode.Text = "";
                txtMedicineCharge.Text = "0";
            }
            patient.Code = ddlCode.SelectedItem.Text;
            
            //Patient Info

            ds = new DataSet();
            ds=patient.ShowPatientInfo();

            txtName.Text = ds.Tables[0].Rows[0][0].ToString();
            txtHname.Text = ds.Tables[0].Rows[0][1].ToString();
            txtComplaint.Text = ds.Tables[0].Rows[0][2].ToString();
            txtSex.Text = ds.Tables[0].Rows[0][3].ToString();
            txtAddress.Text = ds.Tables[0].Rows[0][4].ToString();
            txtCountry.Text = ds.Tables[0].Rows[0][5].ToString();
            txtState.Text = ds.Tables[0].Rows[0][6].ToString();
            txtCity.Text = ds.Tables[0].Rows[0][7].ToString();
            txtAge.Text = ds.Tables[0].Rows[0][8].ToString();
            txtDrName.Text = ds.Tables[0].Rows[0][10].ToString();
            txtAdmitDate.Text = ds.Tables[0].Rows[0][11].ToString();
            txtAdmitTime.Text = ds.Tables[0].Rows[0][12].ToString();
            txtAdvance.Text = ds.Tables[0].Rows[0][13].ToString();
          
            //Doctor Charge INfo

            ds1 = new DataSet();
            ds1 = patient.ShowDoctorChargeByCode();
          
            if (ds1.Tables[0].Rows[0][0].ToString() !="")
            {
                txtDrCharge.Text = ds1.Tables[0].Rows[0][0].ToString();
              
            }
            else
            {
                txtDrCharge.Text = "0";
            
            }
           
            //Test Charge Info

            ds2 = new DataSet();
            ds2 = patient.ShowTestChargeByCode();
            if (ds2.Tables[0].Rows[0][0].ToString() !="")
            {
                txtTestCharge.Text = ds2.Tables[0].Rows[0][0].ToString(); 
            }
            else
            {
                txtTestCharge.Text = "0";
             
            }
           
            //Room Charge Info

            ds3 = new DataSet();
            ds3 = patient.ShowRoomChargeByCode();

            if (ds3.Tables[0].Rows[0][0].ToString() != "" )
            {  
                txtRoomCharge.Text = ds3.Tables[0].Rows[0][0].ToString();
            }
            else if(ds3.Tables[0].Rows[0][1].ToString() != "")
            {
              
                txtRoomCode.Text = ds3.Tables[0].Rows[0][1].ToString();
            }
            else
           
                txtRoomCharge.Text = "0";
                txtRoomCode.Text = "";
           
           
            //Medicine Charge Info

            ds4 = new DataSet();
            ds4 = patient.ShowMedicineChargeByCode();
            if (ds4.Tables[0].Rows[0][0].ToString() !="")
            {
                txtMedicineCharge.Text = ds4.Tables[0].Rows[0][0].ToString();
            }
            else
            {
                txtMedicineCharge.Text = "0";
            }
          lblMsg.Text = "";
        }
        catch (Exception ex)
        {
         // lblMsg.Text = ex.Message.ToString();
          lblMsg.Text = "";
       }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            discharge.Code = ddlCode.SelectedItem.Text.Trim();
            room.Code= ddlCode.SelectedItem.Text.Trim();
            discharge.Name = txtName.Text.Trim();
            discharge.Hname = txtHname.Text.Trim();
            discharge.Complain = txtComplaint.Text.Trim();
            discharge.Sex = txtSex.Text.Trim();
            discharge.Address = txtAddress.Text.Trim();
            discharge.Country = txtCountry.Text.Trim();
            discharge.State = txtState.Text.Trim();
            discharge.City = txtCity.Text.Trim();
            discharge.Doctorname = txtDrName.Text.Trim();
            discharge.Roomname = txtRoomCode.Text.Trim();
            discharge.Inout = ddlInOut.SelectedItem.Text.Trim();
            discharge.Admitdate =Convert.ToDateTime(txtAdmitDate.Text.Trim());
            discharge.Admittime = txtAdmitTime.Text.Trim();
            discharge.Dischargedate = GMDatePicker1.Date.Date;
            discharge.Dischargetime = txtDischargeTime.Text.Trim() + ddlTime.SelectedItem.Text.Trim();
            discharge.Age =int.Parse(txtAge.Text.Trim());
          
            
            /// Days Calculation
            DateTime extday = Convert.ToDateTime(txtAdmitDate.Text.Trim());
            int day = extday.Day;
            int totday = GMDatePicker1.Date.Day - day;
            
          ///Amount Calculation

            txtDayStay.Text = totday.ToString(); 
            int totroom =int.Parse(txtDayStay.Text.Trim()) * int.Parse(txtRoomCharge.Text.Trim());
            int totcharge = totroom + int.Parse(txtExtraCharge.Text.Trim())+int.Parse(txtTestCharge.Text.Trim())+int.Parse(txtMedicineCharge.Text.Trim())+int.Parse(txtDrCharge.Text.Trim()) -int.Parse(txtAdvance.Text.Trim());
            txtTotalCharge.Text=totcharge.ToString();
            discharge.Daystayed = txtDayStay.Text.Trim();
            discharge.Advance = int.Parse(txtAdvance.Text.Trim());
            discharge.Doctorcharges=int.Parse(txtDrCharge.Text.Trim());
            discharge.Testcharges = int.Parse(txtTestCharge.Text.Trim());
            discharge.Roomcharges=int.Parse(txtRoomCharge.Text.Trim());
            discharge.Medicinecharge = int.Parse(txtMedicineCharge.Text.Trim());
            discharge.Extracharge = int.Parse(txtExtraCharge.Text.Trim());
            discharge.Totcharge = int.Parse(txtTotalCharge.Text.Trim());
            discharge.Condition = txtCondition.Text.Trim();
            discharge.InsertDischargePatient();
            room.UpdateRoomMaster();
            patient.Code = ddlCode.SelectedItem.Text.Trim();
            patient.UpdatePatient(); 
            lblMsg.Text = "Inserted...!";


        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }

    }
}
