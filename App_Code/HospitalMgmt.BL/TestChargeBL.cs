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
/// Summary description for TestChargeBL
/// </summary>
public class TestChargeBL:Connection
{
    public static DataSet ds;
	public TestChargeBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
   string code,testcode,time;
   public string Code
   {
       get { return code; }
       set { code = value; }
   }
   public string Testcode
   {
       get { return testcode; }
       set { testcode = value; }
   }
   public string Time
   {
       get { return time; }
       set { time = value; }
   }
    DateTime date, date1, date2;
    public DateTime Date
    {
        get { return date; }
        set { date = value; }
    }
    public DateTime Date1
    {
        get { return date1; }
        set { date1 = value; }
    }
    public DateTime Date2
    {
        get { return date2; }
        set { date2 = value; }
    }
    int charge;
    public int Charge
    {
        get { return charge; }
        set { charge = value; }
    }
    public void InsertTestCharge()
    {
        SqlParameter[] p = new SqlParameter[5];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@testcode", this.testcode);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@date", this.date);
        p[2].DbType = DbType.DateTime;
        p[3] = new SqlParameter("@time", this.time);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@charge", this.charge);
        p[4].DbType = DbType.Int32;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpInsertTestCharges", p);

    }
    public DataSet ShowTestInfoByDate()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@date", this.date);
        p[0].DbType = DbType.DateTime;
        ds=SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowTestInfoByDate", p);
        return ds;
    }
    public DataSet ShowPatientCodeBYTest()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowPatientCodeBYTest");
        return ds;
    }
    public DataSet ShowTestInfoByDatePatient()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@date", this.date);
        p[1].DbType = DbType.DateTime;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowTestInfoByDatePatient", p);
        return ds;
    }
    public DataSet ShowTestInfoByOnlyDate()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@date", this.date);
        p[0].DbType = DbType.DateTime;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowTestInfoByOnlyDate", p);
        return ds;
    }
    public DataSet ShowTestCodeOnPatient()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowTestCodeOnPatient");
        return ds;
    }
    public DataSet ShowTestCodeByPateintCode()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowTestCodeByPateintCode", p);
        return ds;
    }
    public DataSet ShowTestNameByTestCode()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.testcode);
        p[0].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowTestNameByTestCode", p);
        return ds;
    }
    public DataSet ShowTestInfoByTestPatientCode()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@testcode", this.testcode);
        p[1].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowTestInfoByTestPatientCode", p);
        return ds;
    }
    public DataSet SpShowTestBetweenDate()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@date1", this.date1);
        p[0].DbType = DbType.DateTime; 
        p[1] = new SqlParameter("@date2", this.date2);
        p[1].DbType = DbType.DateTime;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowTestBetweenDate", p);
        return ds;
    }
}
