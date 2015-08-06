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

public partial class Doctors_frmOwnDetails : System.Web.UI.Page
{
    LoginInfoBL login = new LoginInfoBL();
    SpecialistMasterBL spec = new SpecialistMasterBL();
    DoctorMasterBL doc = new DoctorMasterBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlSpecialist.DataSource = spec.ShowSpecialist();
            ddlSpecialist.DataTextField = "Specialist_Name";
            ddlSpecialist.DataValueField = "Specialist_Id";
            ddlSpecialist.DataBind();

            Panel1.Visible = false;
            login.Name = Session["Name"].ToString();
            login.Password = Session["Password"].ToString();
            DetailsView1.DataSource = login.ShowDoctorInfo();
            DetailsView1.DataBind();
        }
    }
    protected void btnDetail_Click(object sender, EventArgs e)
    {
        try
        {
            Panel1.Visible = true;
            login.Name = Session["Name"].ToString();
            login.Password = Session["Password"].ToString();
            DataSet ds = new DataSet();
            ds = login.ShowDoctorInfo();
            txtCode.Text = ds.Tables[0].Rows[0][0].ToString();
            txtName.Text = ds.Tables[0].Rows[0][1].ToString();
            ListItem li1 = ddlSpecialist.Items.FindByValue(ds.Tables[0].Rows[0][2].ToString());
            if (li1 != null)
            {
                li1.Selected = true;
            }
            txtTime1.Text = ds.Tables[0].Rows[0][3].ToString();
            txtTime2.Text = ds.Tables[0].Rows[0][4].ToString();
            txtContact.Text = ds.Tables[0].Rows[0][5].ToString();
            txtCharges.Text = ds.Tables[0].Rows[0][6].ToString();
            txtDesc.Text = ds.Tables[0].Rows[0][7].ToString();
        }
        catch (Exception)
        {
            
            throw;
        }
       
    }
    protected void btnModify_Click(object sender, EventArgs e)
    {
        try
        {
            doc.Code = txtCode.Text.Trim();
            doc.Name = txtName.Text.Trim();
            doc.Id = int.Parse(ddlSpecialist.SelectedValue);
            doc.Time1 = txtTime1.Text.Trim();
            doc.Time2 = txtTime2.Text.Trim();
            doc.Contactno = txtContact.Text.Trim();
            doc.Chrge = Convert.ToInt32(txtCharges.Text.Trim());
            doc.Desc = txtDesc.Text.Trim();
            doc.ModifyDoctorDetail();
            lblMsg.Text = "Detail Modified...!";

        }
        catch (Exception ex)
        {
            lblMsg.Text=ex.Message.ToString();
        }
    }
}
