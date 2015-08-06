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
/// Summary description for RoomChargeBL
/// </summary>
public class RoomChargeBL:Connection
{
    public static DataSet ds;
	public RoomChargeBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
   string code,roomcode,time;
    public string Code
    {
        get { return code; }
        set { code = value; }
    }
    public string Roomcode
    {
        get { return roomcode; }
        set { roomcode = value; }
    }
    public string Time
    {
        get { return time; }
        set { time = value; }
    }
   int charge;
    public int Charge
    {
        get { return charge; }
        set { charge = value; }
    }
    DateTime date;
    public DateTime Date
    {
        get { return date; }
        set { date = value; }
    }
    public void InsertRoomCharge()
    {
        SqlParameter[] p = new SqlParameter[5];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@roomcode", this.roomcode);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@date", this.date);
        p[2].DbType = DbType.DateTime;
        p[3] = new SqlParameter("@time", this.time);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@charge", this.charge);
        p[4].DbType = DbType.Int32;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpInsertRoomCharges", p);

    }
    public DataSet ShowPatientRoomCode()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowPatientRoomCode");
        return ds;
    }
    public DataSet ShowRoomNameByCode()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.roomcode);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowRoomNameByCode",p);
        return ds;
    }
    public DataSet ShowPatientInfoByRoomCode()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.roomcode);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowPatientInfoByRoomCode", p);
        return ds;
    }
     public void UpdateRoomMaster()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpUpdateRoomMaster", p);

    }
}
