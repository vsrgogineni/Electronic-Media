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

public partial class Admin_Search_frmTestonPatient : System.Web.UI.Page
{
    TestChargeBL test = new TestChargeBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlPatient.DataSource = test.ShowTestCodeOnPatient();
            ddlPatient.DataTextField = "patient_code";
            ddlPatient.DataBind();
            ddlPatient.Items.Insert(0, "---Select---");
        }

    }
    protected void ddlPatient_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            test.Code = ddlPatient.SelectedItem.Text.Trim();
            ddlTest.DataSource = test.ShowTestCodeByPateintCode();
            ddlTest.DataTextField = "test_code";
            ddlTest.DataBind();
            ddlTest.Items.Insert(0, "---Select---");
            lblMsg.Text = "";

        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Patient Code...!"; 
        }
    }
    protected void ddlTest_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            DataSet ds = new DataSet();
            test.Testcode = ddlTest.SelectedItem.Text.Trim();
            test.Code = ddlPatient.SelectedItem.Text.Trim();
            ds = test.ShowTestNameByTestCode();
            lblName.Text = ds.Tables[0].Rows[0][0].ToString();
            GridView1.DataSource = test.ShowTestInfoByTestPatientCode();
            GridView1.DataBind();
            lblMsg.Text = "";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
            //lblMsg.Text = "Plz Select Test Code...!";
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            test.Code = ddlPatient.SelectedItem.Text.Trim();
            test.Testcode = ddlTest.SelectedItem.Text.Trim();
            GridView1.DataSource = test.ShowTestInfoByTestPatientCode();
            GridView1.DataBind();
            lblMsg.Text = "";
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Test Code...!";
        }
    }
}
