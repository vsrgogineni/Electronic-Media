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

public partial class Employee_frmAddSpecialDoctorVisitOnpatient : System.Web.UI.Page
{
    AddPatientBL patient = new AddPatientBL();
    SpecialVisitDoctorBL spdoc = new SpecialVisitDoctorBL();
    AddSpecialDoctorVisitOnPatientBL doctor = new AddSpecialDoctorVisitOnPatientBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlPateintCode.DataSource = patient.ShowPatientCode();
            ddlPateintCode.DataTextField = "Patient_code";
            ddlPateintCode.DataBind();
            ddlPateintCode.Items.Insert(0, "---Select---");

            ddlDocCode.DataSource = spdoc.ShowSpecialDoctor();
            ddlDocCode.DataTextField = "doctor_code";
            ddlDocCode.DataBind();
            ddlDocCode.Items.Insert(0, "---Select---");
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            doctor.Code = ddlPateintCode.SelectedItem.Text.Trim();
            doctor.Doccode = ddlDocCode.SelectedItem.Text.Trim();
            doctor.Date = GMDatePicker1.Date.Date;
            doctor.Time = txtTime.Text.Trim() + ddlTime.SelectedItem.Text.Trim();
            doctor.Charge = int.Parse(txtCharge.Text.Trim());
            doctor.Specialist = txtSpecialist.Text.Trim();
            doctor.InsertSpecialDoctorCharge();
            lblMsg.Text = "Inserted...!";
            txtTime.Text = "";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }

    }
    protected void ddlDocCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            spdoc.Code = ddlDocCode.SelectedItem.Text.Trim();
            DataSet ds = new DataSet();
            ds = spdoc.ShowSpecialDoctorByCode();
            txtName.Text = ds.Tables[0].Rows[0][0].ToString();
            txtSpecialist.Text = ds.Tables[0].Rows[0][2].ToString();
            txtCharge.Text = ds.Tables[0].Rows[0][1].ToString();
          
        }
        catch (Exception ex)
        {

            lblMsg.Text = ex.Message.ToString();
        }
    }
}
