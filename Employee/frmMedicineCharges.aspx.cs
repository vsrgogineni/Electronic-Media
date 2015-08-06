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

public partial class Employee_frmMedicineCharges : System.Web.UI.Page
{
    AddPatientBL patient = new AddPatientBL();
    MedicineMasterBL medicine = new MedicineMasterBL();
    MedicineChargeBL charge = new MedicineChargeBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlPatientCode.DataSource = patient.ShowPatientCode();
            ddlPatientCode.DataTextField = "Patient_code";
            ddlPatientCode.DataBind();
            ddlPatientCode.Items.Insert(0, "---Select---");

            ddlMedicineCode.DataSource = medicine.ShowMedicine();
            ddlMedicineCode.DataTextField = "medicine_code";
            ddlMedicineCode.DataBind();
            ddlMedicineCode.Items.Insert(0, "---Select---");
        }

    }
    protected void ddlMedicineCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            medicine.Code = ddlMedicineCode.SelectedItem.Text.Trim();
            DataSet ds = new DataSet();
            ds = medicine.ShowMedicineByCode();
            txtName.Text = ds.Tables[0].Rows[0][0].ToString();
            txtPrice.Text = ds.Tables[0].Rows[0][1].ToString();
            
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
            charge.Code = ddlPatientCode.SelectedItem.Text.Trim();
            charge.Medicinecode = ddlMedicineCode.SelectedItem.Text.Trim();
            charge.Name = txtName.Text.Trim();
            charge.Date = GMDatePicker1.Date.Date;
            int totcharge;
            totcharge = int.Parse(txtPrice.Text.Trim()) * int.Parse(txtQty.Text.Trim());
            txtCharge.Text = totcharge.ToString();
            charge.Charge = int.Parse(txtCharge.Text.Trim());
            charge.InsertMedicineCharge();
            lblMsg.Text = "Inserted...!";
            txtQty.Text = "";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }
    }
   
}
