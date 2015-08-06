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
/// Summary description for MedicineChargeBL
/// </summary>
public class MedicineChargeBL:Connection
{
    public static DataSet ds;
	public MedicineChargeBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string code, medicinecode, name;
    public string Code
    {
        get { return code; }
        set { code = value; }
    }
    public string Medicinecode
    {
        get { return medicinecode; }
        set { medicinecode = value; }
    }
    public string Name
    {
        get { return name; }
        set { name = value; }
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
    public void InsertMedicineCharge()
    {
        SqlParameter[] p = new SqlParameter[5];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@medicinecode", this.medicinecode);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@name", this.name);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@date", this.date);
        p[3].DbType = DbType.DateTime;
        p[4] = new SqlParameter("@charge", this.charge);
        p[4].DbType = DbType.Int32;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpInsertMedicineCharges", p);

    }
    public DataSet ShowMedicineByDate()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@date", this.date);
        p[1].DbType = DbType.DateTime;
        ds=SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowMedicineByDate", p);
        return ds;
    }
    public DataSet ShowMedicineCode()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowMedicineCode");
        return ds;
    }
    public DataSet ShowpatientnameByCode()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowpatientnameByCode", p);
        return ds;
    }
    public DataSet ShowMedicineByPatientCode()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowMedicineByPatientCode", p);
        return ds;
    }
    public DataSet ShowAllMedicineInfoByCode()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@medcode", this.medicinecode);
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowAllMedicineInfoByCode", p);
        return ds;
    }
}
