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

public partial class Admin_frmAddMedicine : System.Web.UI.Page
{
    MedicineMasterBL medicine = new MedicineMasterBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            medicine.Code = txtCode.Text.Trim();
            medicine.Name = txtName.Text.Trim();
            medicine.Price = Convert.ToDecimal(txtPrice.Text.Trim());
            medicine.Mfgdate = GMDatePicker1.Date.Date;
            medicine.Expdate = GMDatePicker2.Date.Date;
            medicine.Cmpname = txtCmpName.Text.Trim();
            medicine.Batch = txtBatch.Text.Trim();
            medicine.Qty = int.Parse(txtQty.Text.Trim());
            medicine.InsertMedicine();
            lblMsg.Text = "Inserted...!";
        }
        catch (Exception)
        {
            lblMsg.Text = "Already Present...!";
            txtCode.Focus();
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        //foreach (Control i in this.Form.Controls)
        //{
        //    if (i is TextBox)
        //    {
        //        ((TextBox)i).Text = string.Empty;
        //    }
        //}
        txtBatch.Text = "";
        txtCmpName.Text = "";
        txtCode.Text = "";
        txtName.Text = "";
        txtPrice.Text = "";
        txtQty.Text = "";
        lblMsg.Text = "";
    }
}
