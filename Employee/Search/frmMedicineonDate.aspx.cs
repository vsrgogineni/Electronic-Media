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

public partial class Admin_Search_frmMedicineonDate : System.Web.UI.Page
{
    MedicineChargeBL medicine = new MedicineChargeBL();
    AddPatientBL patient = new AddPatientBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
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
            medicine.Date = GMDatePicker1.Date.Date;
            ds=medicine.ShowpatientnameByCode();
            lblName.Text = ds.Tables[0].Rows[0][0].ToString();
            GridView1.DataSource = medicine.ShowMedicineByDate();
            GridView1.DataBind();
            lblMsg.Text = "";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
            //lblMsg.Text = "Plz Select Patient Code...!";
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        medicine.Code = ddlCode.SelectedItem.Text.Trim();
        medicine.Date = GMDatePicker1.Date.Date;
        GridView1.DataSource = medicine.ShowMedicineByDate();
        GridView1.DataBind();
    }
}
