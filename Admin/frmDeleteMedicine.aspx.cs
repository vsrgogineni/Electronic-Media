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

public partial class Admin_frmDeleteMedicine : System.Web.UI.Page
{
    MedicineMasterBL medicine = new MedicineMasterBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlId.DataSource = medicine.ShowMedicine();
            ddlId.DataTextField = "Medicine_Code";
           ddlId.DataValueField = "Medicine_Id";
            ddlId.DataBind();
            ddlId.Items.Insert(0, "---Select---");
        }
    }
    protected void ddlId_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            medicine.Id = int.Parse(ddlId.SelectedValue);
            DataSet ds = new DataSet();
            ds = medicine.ShowMedicineByID();
            txtCode.Text=ds.Tables[0].Rows[0][0].ToString();
            txtName.Text = ds.Tables[0].Rows[0][1].ToString();
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Medicine ID...!";
            txtName.Text = "";
            txtCode.Text = "";
            ddlId.Focus();
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            medicine.Id = int.Parse(ddlId.SelectedItem.Text);
            medicine.DeleteMedicine();
            lblMsg.Text = "Deleted...!";

        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }
    }
}
