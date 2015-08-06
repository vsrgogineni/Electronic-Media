
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
/// Summary description for RoomMasterBL
/// </summary>
public class RoomMasterBL : Connection
{
    public static DataSet ds;
    public RoomMasterBL()
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
    public void InsertRoom()
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
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpInsertRoom", p);
    }
    public DataSet ShowRoom()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowRoom");
        return ds;
    }
    public DataSet ShowRoomByID()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@id", this.id);
        p[0].DbType = DbType.Int16;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowRoomByID", p);
        return ds;
    }
    public void DeleteRoom()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@id", this.id);
        p[0].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpDeleteRoom", p);
    }
    public DataSet ShowAllRoom()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowAllRoom");
        return ds;
    }
    public DataSet ShowRoomByCode()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowAllRoomByCode", p);
        return ds;
    } 
    public void UpdateRoom()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpUpdateRoom", p);
    }
    public DataSet ShowStatusByCode()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowRoomByStatus", p);
        return ds;
    }
    public DataSet SpShowPatientInfoAccordingToRoom()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowPatientInfoAccordingToRoom", p);
        return ds;
    } 
}