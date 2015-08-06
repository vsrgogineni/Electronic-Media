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

public partial class Admin_frmAddEmployeeDetail : System.Web.UI.Page
{
    EmployeeDetailBL emp = new EmployeeDetailBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            emp.Name = txtName.Text.Trim();
            emp.Address = txtAddress.Text.Trim();
            emp.Phone = txtPhone.Text.Trim();
            emp.Email = txtMail.Text.Trim();
            emp.Dutytime = ddlDutyTime.SelectedItem.Text;
            emp.Uname = txtUname.Text.Trim();
            emp.Password = txtPassword.Text.Trim();
            emp.Roleid = 2;
            emp.InsertEmployeeDetail();
            lblMsg.Text = "Employee Added...!";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }
       

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text="";
        txtAddress.Text="";
        txtPhone.Text="";
        txtMail.Text="";
        txtUname.Text="";
        txtPassword.Text="";
        lblMsg.Text = "";

    }
}
