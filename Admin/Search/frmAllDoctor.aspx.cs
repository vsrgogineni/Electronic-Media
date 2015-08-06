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

public partial class Admin_Search_frmAllDoctor : System.Web.UI.Page
{
    DoctorMasterBL doctor = new DoctorMasterBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        //if (!IsPostBack)
        //{
        //    ddlId.DataSource = doctor.ShowDoctor();
        //    ddlId.DataTextField = "Doctor_code";
        //    ddlId.DataValueField = "Doctor_Id";
        //    ddlId.DataBind();
        //    ddlId.Items.Insert(0, "---Select---");
        //}

    }
    protected void ddlId_SelectedIndexChanged(object sender, EventArgs e)
    {
        //try
        //{
        //    doctor.Id = int.Parse(ddlId.SelectedValue);
        //    GridView1.DataSource = doctor.ShowAllDoctor();
        //    GridView1.DataBind();
        //}
        //catch (Exception)
        //{

        //    lblMsg.Text = "Plz Select Dr. Id...!";
        //}
      
    }
    protected void btnShow_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = doctor.ShowAllDoctor();
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataSource = doctor.ShowAllDoctor();
        GridView1.DataBind();
    }
}
