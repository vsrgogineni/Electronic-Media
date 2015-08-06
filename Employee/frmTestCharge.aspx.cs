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

public partial class Employee_frmAddTestOnPatient : System.Web.UI.Page
{
    AddPatientBL pat = new AddPatientBL();
    TestMasterBL test = new TestMasterBL();
    TestChargeBL charge = new TestChargeBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlCode.DataSource = pat.ShowPatientCode();
            ddlCode.DataTextField = "patient_code";
            ddlCode.DataBind();
            ddlCode.Items.Insert(0, "---Select---");

            ddlTestCode.DataSource = test.ShowTest();
            ddlTestCode.DataTextField = "test_code";
            ddlTestCode.DataBind();
            ddlTestCode.Items.Insert(0, "---Select---");
        }

    }
    protected void ddlTestCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            test.Code = ddlTestCode.SelectedItem.Text.Trim();
            DataSet ds = new DataSet();
            ds = test.ShowTestByCode();
            txtName.Text = ds.Tables[0].Rows[0][0].ToString();
            txtCharge.Text = ds.Tables[0].Rows[0][1].ToString();
            lblMsg.Text = "";

        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Test Code...!";
            txtCharge.Text = "";
            txtName.Text = "";
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            charge.Code = ddlCode.SelectedItem.Text.Trim();
            charge.Testcode = ddlTestCode.SelectedItem.Text.Trim();
            charge.Date = GMDatePicker1.Date.Date;
            charge.Time = txttime.Text.Trim() + ddlTime.SelectedItem.Text.Trim();
            charge.Charge = int.Parse(txtCharge.Text.Trim());
            charge.InsertTestCharge();
            lblMsg.Text = "Inserted...!";

        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }

    }
}
