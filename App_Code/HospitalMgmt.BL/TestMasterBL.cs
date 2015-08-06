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
/// Summary description for TestMasterBL
/// </summary>
public class TestMasterBL:Connection
{
    public static DataSet ds;
	public TestMasterBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string code, name, desc;
    public string Code
    {
        get { return code; }
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
    int charge, id;
    public int Charge
    {
        get { return charge; }
        set { charge = value; }
    }
    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    public void InsertTest()
    {
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@name", this.name);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@desc", this.desc);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@charge", this.charge);
        p[3].DbType = DbType.Int32;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpInsertTest", p);
    }
    public DataSet ShowTest()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowTest");
        return ds;
    }
    public DataSet ShowTestByID()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@id", this.id);
        p[0].DbType = DbType.Int16;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowTestByID", p);
        return ds;
    }
    public void DeleteTest()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@id", this.id);
        p[0].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpDeleteTest", p);
    }
    public DataSet ShowAllTest()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowAllTest");
        return ds;
    }
    public DataSet ShowTestByCode()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowTestByCode", p);
        return ds;
    }
}
