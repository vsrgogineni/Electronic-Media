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

public partial class Admin_frmSpecialVisitDoctor : System.Web.UI.Page
{
    SpecialistMasterBL specialist = new SpecialistMasterBL();
    SpecialVisitDoctorBL spdoc = new SpecialVisitDoctorBL();
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
            spdoc.Code = txtCode.Text.Trim();
            spdoc.Name = txtName.Text.Trim();
            spdoc.Id = int.Parse(ddlSpecialist.SelectedValue);
            spdoc.Chrge = int.Parse(txtCharges.Text.Trim());
            spdoc.Desc = txtDesc.Text.Trim();
            spdoc.InsertSpecialVisitDoctor();
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
        // }
    }
}
