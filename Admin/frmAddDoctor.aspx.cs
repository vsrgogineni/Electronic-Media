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

public partial class Admin_frmAddDoctor : System.Web.UI.Page
{
    SpecialistMasterBL specialist = new SpecialistMasterBL();
    DoctorMasterBL doctor = new DoctorMasterBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            try
            {
                ddlSpecialist.DataSource = specialist.ShowSpecialist();
                ddlSpecialist.DataTextField = "Specialist_Name";
                ddlSpecialist.DataValueField = "Specialist_Id";
                ddlSpecialist.DataBind();
                ddlSpecialist.Items.Insert(0, "---Select---");
            }
            catch (Exception)
            {
                lblMsg.Text = "Plz Select Specialist...!";
            }
            
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtCode.Text.Trim().Length > 0)
            {
                doctor.Code = txtCode.Text.Trim();
            }
            else
            {
                lblMsg.Text = "Enter Code..";
            }
            
            if (txtName.Text.Trim().Length > 0)
            {
                doctor.Name = txtName.Text.Trim();
            }
            else
            {
                lblMsg.Text = "Enter Name..";
            }
            
            doctor.Id = int.Parse(ddlSpecialist.SelectedValue);
            doctor.Time1 = txtTime1.Text.Trim() + ddlTime1.SelectedItem.Text;
            doctor.Time2 = txtTime2.Text.Trim() + ddlTime2.SelectedItem.Text;
            doctor.Contactno = txtContact.Text.Trim();

            if (txtCharges.Text.Trim().Length > 0)
            {
                doctor.Chrge = int.Parse(txtCharges.Text.Trim());
            }
            else
            {
                lblMsg.Text = "Enter Charge..";
            }
           
                doctor.Desc = txtDesc.Text.Trim();

                doctor.Username = txtUName.Text.Trim();
                doctor.Password = txtPassword.Text.Trim();
                doctor.Roleid = 3;
            doctor.InsertDoctor();
            lblMsg.Text = "Inserted...!";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
            // lblMsg.Text = "Already Present...!";
        }


    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        //foreach (Control i in this.Form.Controls)
        //{
        //    if (i is TextBox)
        //    {
        //        ((TextBox)i).Text = "";
        //    }
            txtCode.Text = string.Empty;
            txtName.Text = string.Empty;
            txtDesc.Text = string.Empty;
            txtCharges.Text = string.Empty;
            lblMsg.Text = string.Empty;
            txtPassword.Text = "";
            txtName.Text = "";
            txtContact.Text = "";
            txtTime1.Text = "";
            txtTime2.Text = "";
        
       // }
    }
}
