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
/// Summary description for MedicineMasterBL
/// </summary>
public class MedicineMasterBL:Connection
{public static DataSet ds;
	public MedicineMasterBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
  string code,name,cmpname,batch;
    public string Code
    {
        get { return code; }
        set { code=value; }
    }
    public string Name
    {
        get { return name; }
        set { name=value; }
    }
    public string Cmpname
    {
        get { return cmpname; }
        set { cmpname=value; }
    }
    public string Batch
    {
        get { return batch; }
        set { batch=value; }
    }
    decimal price;
    public decimal Price
    {
        get { return price; }
        set { price = value; }
    }
    DateTime mfgdate, expdate;
    public DateTime Mfgdate
    {
        get { return mfgdate; }
        set { mfgdate = value; }
    }
    public DateTime Expdate
    {
        get { return expdate; }
        set { expdate = value; }
    }
    int qty,id;
    public int Qty
    {
        get { return qty; }
        set { qty = value; }
    }
    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    public void InsertMedicine()
    {
        SqlParameter[] p = new SqlParameter[8];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@name", this.name);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@price", this.price);
        p[2].DbType = DbType.Decimal;
        p[3] = new SqlParameter("@mfgdate", this.mfgdate);
        p[3].DbType = DbType.DateTime;
        p[4] = new SqlParameter("@expdate", this.expdate);
        p[4].DbType = DbType.DateTime;
        p[5] = new SqlParameter("@cmpname", this.cmpname);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@batch", this.batch);
        p[6].DbType = DbType.String;
        p[7] = new SqlParameter("@qty", this.qty);
        p[7].DbType = DbType.Int32;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpInsertMedicine", p);
    }
    public DataSet ShowMedicine()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowMedicine");
        return ds;
    }
    public DataSet ShowMedicineByID()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@id", this.id);
        p[0].DbType = DbType.Int16;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowMedicineByID", p);
        return ds;
    }
    public void DeleteMedicine()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@id", this.id);
        p[0].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpDeleteMedicine", p);
    }
    public DataSet ShowAllMedicine()
    {
        ds = new DataSet();
        //SqlParameter[] p = new SqlParameter[1];
        //p[0] = new SqlParameter("@id", this.id);
        //p[0].DbType = DbType.Int16;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowAllMedicine");
        return ds;
    }
    public DataSet ShowAllMedicineByDate()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@date1", this.mfgdate);
        p[0].DbType = DbType.DateTime;
        p[1] = new SqlParameter("@date2", this.expdate);
        p[1].DbType = DbType.DateTime;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowMedicineBetweenDate",p);
        return ds;
    }
    public DataSet ShowMedicineByCode()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowMedicineByCode", p);
        return ds;
    }
}
