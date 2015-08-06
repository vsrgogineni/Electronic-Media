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

public partial class Admin_frmDeleteSpecialVisitDoctor : System.Web.UI.Page
{
    SpecialVisitDoctorBL spdoc = new SpecialVisitDoctorBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlId.DataSource = spdoc.ShowSpecialDoctor();
            ddlId.DataTextField = "Doctor_Name";
            ddlId.DataValueField = "Doctor_Id";
            ddlId.DataBind();
            ddlId.Items.Insert(0, "---Select---");
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            spdoc.Id = int.Parse(ddlId.SelectedValue);
            spdoc.DeleteSpecialDoctor();
            lblMsg.Text = "Deleted...!";
            txtSpecialist.Text = "";
            txtName.Text = "";
            txtCode.Text = "";
            ddlId.Focus();
        }
        catch (Exception)
        {
            lblMsg.Text = "Select Doctor Name To Delete...!";
        }
    }
    protected void ddlId_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            spdoc.Id = int.Parse(ddlId.SelectedValue);
            DataSet ds = new DataSet();
            ds = spdoc.ShowSpecialDoctorByID();
            txtCode.Text = ds.Tables[0].Rows[0][0].ToString();
            txtName.Text = ds.Tables[0].Rows[0][1].ToString();
            txtSpecialist.Text = ds.Tables[0].Rows[0][2].ToString();
            lblMsg.Text = "";
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Doctor Name...!";
            txtCode.Text = "";
            txtName.Text = "";
            txtSpecialist.Text = "";
        }
    }
}
