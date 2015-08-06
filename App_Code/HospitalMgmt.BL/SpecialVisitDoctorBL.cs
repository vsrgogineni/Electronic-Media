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
/// Summary description for SpecialVisitDoctorBL
/// </summary>
public class SpecialVisitDoctorBL:Connection
{
    public static DataSet ds;
	public SpecialVisitDoctorBL()
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
    int id, charge;
    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    public int Chrge
    {
        get { return charge; }
        set { charge = value; }
    }
    public void InsertSpecialVisitDoctor()
    {
        SqlParameter[] p = new SqlParameter[5];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@name", this.name);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@id", this.id);
        p[2].DbType = DbType.Int16;
        p[3] = new SqlParameter("@charge", this.charge);
        p[3].DbType = DbType.Int32;
        p[4] = new SqlParameter("@desc", this.desc);
        p[4].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpInsertSpecialVisitDoctor", p);
    }
    public DataSet ShowSpecialDoctor()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowSpecialDoctor");
        return ds;
    }
    public DataSet ShowSpecialDoctorByID()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@id", this.id);
        p[0].DbType = DbType.Int16;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowSpecialDoctorByID", p);
        return ds;
    }
    public void DeleteSpecialDoctor()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@id", this.id);
        p[0].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpDeleteSpecialDoctor", p);
    }
    public DataSet ShowSpecialDoctorByCode()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowSpecialDoctorInfoByCode", p);
        return ds;
    }
}
