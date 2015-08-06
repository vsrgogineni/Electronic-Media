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
/// Summary description for SpecialistMasterBL
/// </summary>
public class SpecialistMasterBL:Connection
{
    public static DataSet ds;
	public SpecialistMasterBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
   string name,desc;
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
    int id;
    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    public void InsertSpecialist()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@name", this.name);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@desc", this.desc);
        p[1].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpInsertSpecialist", p);
    }
    public DataSet ShowSpecialist()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowSpecialist");
        return ds;
    }

    public DataSet ShowSpecialistByID()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@id", this.id);
        p[0].DbType = DbType.Int16;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowSpecialistByID",p);
        return ds;
    }
    public void DeleteSpecialist()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@id", this.id);
        p[0].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpDeleteSpecialist", p);
    }
}
