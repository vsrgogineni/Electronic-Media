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

public partial class Admin_Search_frmPatientBlgsDoctor : System.Web.UI.Page
{
    AddDoctorOnPatient doc = new AddDoctorOnPatient();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlDrCode.DataSource = doc.ShowDoctorOnPatient();
            ddlDrCode.DataTextField = "Doctor_code";
            ddlDrCode.DataBind();
            ddlDrCode.Items.Insert(0, "---Select---");
        }

    }
    protected void ddlDrCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            doc.Doccode = ddlDrCode.SelectedItem.Text.Trim();
            DataSet ds = new DataSet();
            ds = doc.ShowDoctorNameByCode();
            lblName.Text = ds.Tables[0].Rows[0][0].ToString();
            GridView1.DataSource = doc.ShowPatientInfoByDoctor();
            GridView1.DataBind();
            lblMsg.Text = "";
        }
        catch (Exception)
        {
           // lblMsg.Text = ex.Message.ToString();
            lblMsg.Text = "Plz Select Doctor Code...!";
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            doc.Doccode = ddlDrCode.SelectedItem.Text.Trim();
            GridView1.DataSource = doc.ShowPatientInfoByDoctor();
            GridView1.DataBind();
            lblMsg.Text = "";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }
    }
}
