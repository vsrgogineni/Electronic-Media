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
/// Summary description for LoginInfoBL
/// </summary>
public class LoginInfoBL:Connection
{
    public static DataSet ds;
	public LoginInfoBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private string name, password;
    public string Name
    {
        get { return name; }
        set { name = value; }
    }
    public string Password
    {
        get { return password; }
        set { password = value; }
    }
    DateTime date;
    public DateTime Date
    {
        get { return date; }
        set { date = value; }
    }
    public bool CheckAdmininfo()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@name", this.name);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@password", this.password);
        p[1].DbType = DbType.String;
        int count;
        count=int.Parse(SqlHelper.ExecuteScalar(con,CommandType.StoredProcedure,"SpCheckAdminInfo",p).ToString());
        if (count > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    public bool CheckEmployeeinfo()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@name", this.name);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@password", this.password);
        p[1].DbType = DbType.String;
        int count;
        count = int.Parse(SqlHelper.ExecuteScalar(con, CommandType.StoredProcedure, "SpCheckEmployeeInfo", p).ToString());
        if (count > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    public bool CheckDoctorInfo()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@name", this.name);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@password", this.password);
        p[1].DbType = DbType.String;
        int count;
        count = int.Parse(SqlHelper.ExecuteScalar(con, CommandType.StoredProcedure, "SpCheckDoctorInfo", p).ToString());
        if (count > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    public DataSet ShowPatientByDoctor()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@uname", this.name);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@password", this.password);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@date", this.date);
        p[2].DbType = DbType.Date;
        ds = new DataSet();
        ds=SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowDoctorByLogin", p);
        return ds;
    }
    public void ChangeDoctorPassword()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@uname", this.name);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@password", this.password);
        p[1].DbType = DbType.String;
       SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpChangeDoctorPassword", p);

   }
    public void ChangeEmployeePassword()
   {
       SqlParameter[] p = new SqlParameter[2];
       p[0] = new SqlParameter("@uname", this.name);
       p[0].DbType = DbType.String;
       p[1] = new SqlParameter("@password", this.password);
       p[1].DbType = DbType.String;
       SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpChangeEmployeePassword", p);

   }
    public DataSet ShowDoctorInfo()
   {
       SqlParameter[] p = new SqlParameter[2];
       p[0] = new SqlParameter("@uname", this.name);
       p[0].DbType = DbType.String;
       p[1] = new SqlParameter("@password", this.password);
       p[1].DbType = DbType.String;
       ds = new DataSet();
       ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowDoctorInfo", p);
       return ds;
   }
}
