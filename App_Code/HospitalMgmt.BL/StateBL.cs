using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using HospitalMgmt.DAL;
using System.Data.SqlClient;
/// <summary>
/// Summary description for StateBL
/// </summary>
public class StateBL:Connection
{
    public static DataSet ds;
	public StateBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string stateName, stateDesc;

    public string StateName
    {
        get { return stateName; }
        set { stateName = value; }
    }

    public string StateDesc
    {
        get { return stateDesc; }
        set { stateDesc = value; }
    }

   
    int countryId;
    public int CountryId
    {
        get { return countryId; }
        set { countryId = value; }
    }
  
    public  void InsertNewState()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@StateName",this.stateName);
        p[0].DbType =DbType.String;
        p[1] = new SqlParameter("@StateDesc", this.stateDesc);
        p[1].DbType =DbType.String;
        p[2] = new SqlParameter("@CountryId",this.countryId);
        p[2].DbType =DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "AddState", p);
    }
    public DataSet ShowAllState()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "ShowState");
        return ds;
    }
    public DataSet GetStateByCountryId()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@countryid", this.countryId);
        p[0].DbType = DbType.Int16;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpGetStateByCountryId", p);
        return ds;
    }
}
