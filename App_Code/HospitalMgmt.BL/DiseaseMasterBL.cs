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
/// Summary description for DiseaseMasterBL
/// </summary>
public class DiseaseMasterBL:Connection
{
    public static DataSet ds;
	public DiseaseMasterBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string name, doccode;
    public string Name
    {
        get { return name; }
        set { name = value; }
    }
    public string Doccode
    {
        get { return doccode; }
        set { doccode = value; }
    }
    int id;
    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    public void InsertDisease()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@name", this.name);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@doccode", this.doccode);
        p[1].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpInsertDisease", p);
    }
    public DataSet ShowDisease()
    {
        DataSet ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@id", this.id);
        p[0].DbType = DbType.Int16;
       ds= SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowDisease", p);
       return ds;
   }
    public DataSet ShowDiseaseCodes()
   {
       DataSet ds = new DataSet();
       ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowDiseaseCodes");
       return ds;
   }
}
