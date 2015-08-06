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

public partial class Admin_Search_frmDoctoronDiseases : System.Web.UI.Page
{
    DiseaseMasterBL code = new DiseaseMasterBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlDiseaseCode.DataSource = code.ShowDiseaseCodes();
            ddlDiseaseCode.DataTextField = "disease_id";
            ddlDiseaseCode.DataBind();
            ddlDiseaseCode.Items.Insert(0, "---Select---");

        }

    }
    protected void ddlDiseaseCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            code.Id = int.Parse(ddlDiseaseCode.SelectedValue);
            GridView1.DataSource = code.ShowDisease();
            GridView1.DataBind();
            lblMsg.Text = "";
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Id...!";
        }
       
    }
}
