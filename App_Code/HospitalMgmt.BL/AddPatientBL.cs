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
/// Summary description for AddPatientBL
/// </summary>
public class AddPatientBL:Connection
{
    public static DataSet ds;
	public AddPatientBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string code, name, hname, complaint, sex, address, country, state, city, iopatient, doctorcode, testcode, roomcode, condition, admittime;
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
    public string Hname
    {
        get { return hname; }
        set { hname = value; }
    }
    public string Complaint
    {
        get { return complaint; }
        set { complaint = value; }
    }
    public string Sex
    {
        get { return sex; }
        set { sex = value; }
    }
    public string Address
    {
        get { return address; }
        set { address = value; }
    }
    public string Country
    {
        get { return country; }
        set { country = value; }
    }
    public string State
    {
        get { return state; }
        set { state = value; }
    }
    public string City
    {
        get { return city; }
        set { city = value; }
    }
    public string Iopatient
    {
        get { return iopatient; }
        set { iopatient = value; }
    }
    public string Doctorcode
    {
        get { return doctorcode; }
        set { doctorcode = value; }
    }
    public string Testcode
    {
        get { return testcode; }
        set { testcode = value; }
    }
    public string Roomcode
    {
        get { return roomcode; }
        set { roomcode = value; }
    }
    public string Condition
    {
        get { return condition; }
        set { condition = value; }
    }
    public string Admittime
    {
        get { return admittime; }
        set { admittime = value; }
    }
    int age, advance;
    public int Age
    {
        get { return age; }
        set { age = value; }
    }
    public int Advance
    {
        get { return advance; }
        set { advance = value; }
    }
DateTime admitdate,date1,date2;
 
    public DateTime Admitdate
    {
        get { return admitdate; }
        set { admitdate = value; }
    }
    public DateTime Date1
    {
        get { return date1; }
        set { date1 = value; }
    }
    public DateTime Date2
    {
        get { return date2; }
        set { date2 = value; }
    }
    
    public void AddPatient()
    {
        SqlParameter[] p = new SqlParameter[18];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@name", this.name);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@hname", this.hname);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@complaint", this.complaint);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@sex", this.sex);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@address", this.address);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@country", this.country);
        p[6].DbType = DbType.String;
        p[7] = new SqlParameter("@state", this.state);
        p[7].DbType = DbType.String;
        p[8] = new SqlParameter("@city", this.city);
        p[8].DbType = DbType.String;
        p[9] = new SqlParameter("@age", this.age);
        p[9].DbType = DbType.Int16;
        p[10] = new SqlParameter("@iopatient", this.iopatient);
        p[10].DbType = DbType.String;
        p[11] = new SqlParameter("@doctorcode", this.doctorcode);
        p[11].DbType = DbType.String;
        p[12] = new SqlParameter("@admitdate", this.admitdate);
        p[12].DbType = DbType.DateTime;
        p[13] = new SqlParameter("@admittime", this.admittime);
        p[13].DbType = DbType.String;
        p[14] = new SqlParameter("@testcode", this.testcode);
        p[14].DbType = DbType.String;
        p[15] = new SqlParameter("@roomcode", this.roomcode);
        p[15].DbType = DbType.String;
        p[16] = new SqlParameter("@advance", this.advance);
        p[16].DbType = DbType.Int32;
        p[17] = new SqlParameter("@condition", this.condition);
        p[17].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpAddPatient", p);
    }
    public DataSet ShowPatientInfo()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowPatientInfo", p);
        return ds;
    }
    public DataSet ShowPatientCode()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowPatientCode");
        return ds;
    }
    public DataSet ShowDoctorChargeByCode()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowDoctorChargeByCode", p);
        return ds;
    }
    public DataSet ShowTestChargeByCode()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowTestChargeByCode", p);
        return ds;
    }
    public DataSet ShowRoomChargeByCode()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowRoomChargeByCode", p);
        return ds;
    }
    public DataSet ShowMedicineChargeByCode()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowMedicineChargeByCode", p);
        return ds;
    }
    public void UpdatePatient()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpUpdatePatient", p);
    }
    public DataSet ShowPatientInfoByDate()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@date", this.admitdate);
        p[0].DbType = DbType.DateTime;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowPatientInfoByDate", p);
        return ds;
    }
    public DataSet ShowPatientInfoByDoctor()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@drcode", this.doctorcode);
        p[0].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowPatientInfoByDoctor", p);
        return ds;
    }
    public DataSet ShowPatientInfoBetweenDate()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@date1", this.date1);
        p[0].DbType = DbType.DateTime;
        p[1] = new SqlParameter("@date2", this.date2);
        p[1].DbType = DbType.DateTime;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowPatientBetweenDate", p);
        return ds;
    }
    public DataSet ShowPatientCodeByStatus()
    {
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowPatientCodeByStatus");
        return ds;
    }
    public void DeletePatientPermanently()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpDeletePatientPermanently", p);
    }
   
}
