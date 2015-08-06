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
/// Summary description for CityBL
/// </summary>
public class CityBL:Connection
{
	public CityBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string cityName,cityDesc;
    int stateId;
    public static DataSet ds;
   

    public string CityName
    {
        get { return cityName; }
        set { cityName = value; }
    }

    public string CityDesc
    {
        get { return cityDesc; }
        set { cityDesc = value; }
    }

    int countryId;
    public int StateId
    {
        get { return stateId; }
        set { stateId = value; }
    }
    public  void InsertCity()
    {

        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@CityName", this.cityName);
        p[0].DbType =DbType.String;
        p[1] = new SqlParameter("@CityDesc", this.cityDesc);
        p[1].DbType =DbType.String;
        p[2] = new SqlParameter("@StateId", this.stateId);
        p[2].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "AddCity", p);

    }
    public DataSet ShowAllCity()
    {
        DataSet ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "ShowCity");
        return ds;
    }
    public DataSet GetCityByState()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("stateid", this.stateId);
        p[0].DbType = DbType.Int16;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "spGetCityByStateId", p);
        return ds;
    }
}
