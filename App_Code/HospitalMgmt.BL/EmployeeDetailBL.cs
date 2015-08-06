using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using HospitalMgmt.DAL;
/// <summary>
/// Summary description for EmployeeDetailBL
/// </summary>
public class EmployeeDetailBL:Connection
{
    public static DataSet ds;
	public EmployeeDetailBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string name, address, phone, email, dutytime,uname,password;
    public string Name
    {
        get { return name; }
        set { name = value; }
    }
    public string Address
    {
        get { return address; }
        set { address = value; }
    }
    public string Phone
    {
        get { return phone; }
        set { phone = value; }
    }
    public string Email
    {
        get { return email; }
        set {email = value; }
    }
    public string Dutytime
    {
        get { return dutytime; }
        set { dutytime = value; }
    }
    public string Uname
    {
        get { return uname; }
        set { uname = value; }
    }
    public string Password
    {
        get { return password; }
        set { password = value; }
    }
    int roleid;
    public int Roleid
    {
        get { return roleid; }
        set { roleid = value; }
    }
    public void InsertEmployeeDetail()
    {
        SqlParameter[] p = new SqlParameter[8];
        p[0] = new SqlParameter("@name", this.name);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@address", this.address);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@phone", this.phone);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@email", this.email);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@dutytime", this.dutytime);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@uname", this.uname);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@password", this.password);
        p[6].DbType = DbType.String;
        p[7] = new SqlParameter("@roleid", this.roleid);
        p[7].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "spRegisterEmployee", p);
    }
}
