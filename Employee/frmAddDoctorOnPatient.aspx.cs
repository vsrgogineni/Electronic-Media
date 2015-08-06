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

public partial class Employee_frmAddDoctorOnPatient : System.Web.UI.Page
{
    AddPatientBL patient = new AddPatientBL();
    DoctorMasterBL doctor = new DoctorMasterBL();
    AddDoctorOnPatient patdoc = new AddDoctorOnPatient();
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

            ddlDrCode.DataSource = doctor.ShowDoctor();
            ddlDrCode.DataTextField = "doctor_code";
            ddlDrCode.DataBind();
            ddlDrCode.Items.Insert(0, "---Select---");
        }

    }
    protected void ddlDrCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            doctor.Code = ddlDrCode.SelectedItem.Text.Trim();
            DataSet ds = new DataSet();
            ds = doctor.ShowDoctorByCode();
            txtName.Text=ds.Tables[0].Rows[0][0].ToString();
            txtSpecialist.Text = ds.Tables[0].Rows[0][1].ToString();
            txtCharge.Text = ds.Tables[0].Rows[0][2].ToString();
                   }
        catch (Exception ex)
        {

            lblMsg.Text = ex.Message.ToString();
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            patdoc.Code = ddlCode.SelectedItem.Text.Trim();
            patdoc.Doccode = ddlDrCode.SelectedItem.Text.Trim();
            patdoc.Date = GMDatePicker1.Date.Date;
            patdoc.Time = txtTime.Text.Trim() + ddlTime.SelectedItem.Text.Trim();
            patdoc.Charge = int.Parse(txtCharge.Text.Trim());
            patdoc.Specialist = txtSpecialist.Text.Trim();
            patdoc.InsertDoctorCharge();
            lblMsg.Text = "Inserted...!";
            txtTime.Text = "";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }
        
    }
}
