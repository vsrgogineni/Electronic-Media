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
/// Summary description for DoctorMasterBL
/// </summary>
public class DoctorMasterBL:Connection
{
    public static DataSet ds;
	public DoctorMasterBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
   string code,name,desc,time1,time2,contactno,username,password;
    public string Username
    {
        get { return username; }
        set { username = value; }
    }
    public string Password
    {
        get { return password; }
        set { password = value; }
    }
    public string Time1
    {
        get { return time1; }
        set { time1 = value; }
    }
    public string Time2
    {
        get { return time2; }
        set { time2 = value; }
    }
    public string Contactno
    {
        get { return contactno; }
        set { contactno = value; }
    }
    public string Code
    { get { return code; }
        set { code = value; }
    }
    public string Name
    {
        get { return name; }
        set { name = value; }
    }
    public string Desc
    {
        get { return desc; }
        set { desc = value; }
    }
    int id, charge,roleid;
    public int Roleid
    {
        get { return roleid; }
        set { roleid = value; }
    }
    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    public int Chrge
    {
        get { return charge; }
        set {charge = value; }
    }
    public void InsertDoctor()
    {
        SqlParameter[] p = new SqlParameter[11];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String; 
        p[1] = new SqlParameter("@name", this.name);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@id", this.id);
        p[2].DbType = DbType.Int16;
        p[3] = new SqlParameter("@time1", this.time1);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@time2", this.time2);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@contactno", this.contactno);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@charge", this.charge);
        p[6].DbType = DbType.Int32;
        p[7] = new SqlParameter("@desc", this.desc);
        p[7].DbType = DbType.String;
        p[8] = new SqlParameter("@uname", this.username);
        p[8].DbType = DbType.String;
        p[9] = new SqlParameter("@password", this.password);
        p[9].DbType = DbType.String;
        p[10] = new SqlParameter("@roleid", this.roleid);
        p[10].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpInsertDoctor", p);
    }
    public DataSet ShowDoctor()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowDoctor");
        return ds;
    }
    public DataSet ShowDoctorByID()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@id", this.id);
        p[0].DbType = DbType.Int16;
        ds=SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowDoctorByID", p);
        return ds;
    }
     public void DeleteDoctor()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@id", this.id);
        p[0].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpDeleteDoctor", p);
    }
    public DataSet ShowAllDoctor()
    {
        //SqlParameter[] p = new SqlParameter[1];
        //p[0] = new SqlParameter("@id", this.id);
        //p[0].DbType = DbType.Int16;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowAllDoctor");
        return ds;
    }
    public DataSet ShowDoctorByCode()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowDoctorInfoByCode", p);
        return ds;
    }
    public void ModifyDoctorDetail()
    {
        SqlParameter[] p = new SqlParameter[8];
        p[0] = new SqlParameter("@doccode", this.code);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@name", this.name);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@id", this.id);
        p[2].DbType = DbType.Int16;
        p[3] = new SqlParameter("@time1", this.time1);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@time2", this.time2);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@contact", this.contactno);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@charge", this.charge);
        p[6].DbType = DbType.Int32;
        p[7] = new SqlParameter("@desc", this.desc);
        p[7].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpModifyDoctorDetail", p);
    }
}
