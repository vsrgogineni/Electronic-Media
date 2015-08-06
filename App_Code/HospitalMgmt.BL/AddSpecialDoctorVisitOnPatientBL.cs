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
/// Summary description for AddSpecialDoctorVisitOnPatientBL
/// </summary>
public class AddSpecialDoctorVisitOnPatientBL:Connection
{
    public static DataSet ds;
	public AddSpecialDoctorVisitOnPatientBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string code, doccode, time, specialist;
    public string Code
    {
        get { return code; }
        set { code = value; }
    }
    public string Doccode
    {
        get { return doccode; }
        set { doccode = value; }
    }
    public string Time
    {
        get { return time; }
        set { time = value; }
    }
    public string Specialist
    {
        get { return specialist; }
        set { specialist = value; }
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
    public void InsertSpecialDoctorCharge()
    {
        SqlParameter[] p = new SqlParameter[6];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@doccode", this.doccode);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@date", this.date);
        p[2].DbType = DbType.DateTime;
        p[3] = new SqlParameter("@time", this.time);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@charge", this.charge);
        p[4].DbType = DbType.Int32;
        p[5] = new SqlParameter("@specialist", this.specialist);
        p[5].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpInsertSpecialDoctorCharges", p);

    }
}
