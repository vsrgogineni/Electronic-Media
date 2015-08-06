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

public partial class Admin_frmDeleteSpecialist : System.Web.UI.Page
{
    SpecialistMasterBL specialist = new SpecialistMasterBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
          
                ddlId.DataSource = specialist.ShowSpecialist();
                ddlId.DataTextField = "Specialist_name";
         ddlId.DataValueField = "Specialist_Id";
                ddlId.DataBind();
                ddlId.Items.Insert(0, "---Select---");
           
         
        
        }

    }
    protected void ddlId_SelectedIndexChanged(object sender, EventArgs e)
    {  try
            {
        specialist.Id = int.Parse(ddlId.SelectedValue);
        DataSet ds = new DataSet();
        ds=specialist.ShowSpecialistByID();
        txtName.Text = ds.Tables[0].Rows[0][0].ToString();
        txtDesc.Text = ds.Tables[0].Rows[0][1].ToString();
        lblMsg.Text = "";
    }
    catch (Exception)
    {
        lblMsg.Text = "Plz Select Specialist ID...!";
        txtName.Text = "";
        txtDesc.Text = "";
    }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            specialist.Id = int.Parse(ddlId.SelectedItem.Text);
            specialist.DeleteSpecialist();
            lblMsg.Text = "Deleted...!";
            txtName.Text = "";
            txtDesc.Text = "";
            ddlId.Focus();
        }
        catch (Exception)
        {

            lblMsg.Text = "Select Specialist Name To Delete...!";
        }
            
      
        
    }
}
