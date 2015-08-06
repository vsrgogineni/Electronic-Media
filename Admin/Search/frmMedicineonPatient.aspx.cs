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

public partial class Admin_Search_frmMedicineonPatient : System.Web.UI.Page
{
    MedicineChargeBL medicine = new MedicineChargeBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlCode.DataSource = medicine.ShowMedicineCode();
            ddlCode.DataTextField = "patient_code";
            ddlCode.DataBind();
            ddlCode.Items.Insert(0, "---Select---");
        }

    }
    protected void ddlCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            DataSet ds = new DataSet();
           
            medicine.Code = ddlCode.SelectedItem.Text.Trim();
            ds = medicine.ShowpatientnameByCode();
            lblName.Text = ds.Tables[0].Rows[0][0].ToString();
            ddlMedicineCode.DataSource = medicine.ShowMedicineByPatientCode();
            ddlMedicineCode.DataTextField = "medicine_code";
            ddlMedicineCode.DataBind();
            ddlMedicineCode.Items.Insert(0, "---Select---");
            lblMsg.Text = "";

        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select patient code...!";
        }
    }
    protected void ddlMedicineCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            medicine.Medicinecode = ddlMedicineCode.SelectedItem.Text.Trim();
            GridView1.DataSource = medicine.ShowAllMedicineInfoByCode();
            GridView1.DataBind();
            lblMsg.Text = "";

        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Medicine Code...!";
        }
    }
}
