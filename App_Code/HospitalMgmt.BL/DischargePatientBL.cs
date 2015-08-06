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
/// Summary description for DischargePatientBL
/// </summary>
public class DischargePatientBL:Connection
{
    public static DataSet ds;
	public DischargePatientBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
 string  code,name,hname,complain,sex,address,country,state,city,doctorname,roomname,inout,admittime;
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
    public string Complain
    {
        get { return complain; }
        set { complain = value; }
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
    public string Doctorname
    {
        get { return doctorname; }
        set { doctorname = value; }
    }
    public string Roomname
    {
        get { return roomname; }
        set
        {
            if (value.ToString() == "")
            {
                roomname = "";
            }
            else
            {
                roomname = value;
            }
            
        }
    }
    public string Inout
    {
        get { return inout; }
        set { inout = value; }
    }
    public string Admittime
    {
        get { return admittime; }
        set { admittime = value; }
    }
   
    string dischargetime, daystayed, condition;
    public string Dischargetime
    {
        get { return dischargetime; }
        set { dischargetime = value; }
    }
    public string Daystayed
    {
        get { return daystayed; }
        set { daystayed = value; }
    }
    public string Condition
    {
        get { return condition; }
        set { condition = value; }
    }
    DateTime admitdate,dischargedate;
    public DateTime Admitdate
    {
        get { return admitdate; }
        set { admitdate = value; }
    }
    public DateTime Dischargedate
    {
        get { return dischargedate; }
        set { dischargedate = value; }
    }
    int age,advance,doctorcharges,testcharges,roomcharges,medicinecharge,extracharge,totcharge;
    public int Age
    {
        get { return age; }
        set {age = value; }
    }
    public int Advance
    {
        get { return advance; }

        set
        {
            if (value.ToString() == "")
            {
                advance = 0;

            }
            else
            {
                advance = value;
            }

        }
    }
    public int Doctorcharges
    {
        get 
        {
            return doctorcharges;
        }
        set 
        {
            if (value.ToString() == "")
            {
                doctorcharges = 0;
            }
            else
            {
                doctorcharges = value;
            }
        }
      }
    public int Testcharges
    {
        get 
        { 
            return testcharges; 
        }
        set
        {
            if (value.ToString() == "")
            {
                testcharges = 0;
            }
            else
            {
                testcharges = value;
            }
          
        }
    }
    public int Roomcharges
    {
        get 
        {
            return roomcharges; 
        }
        set
        {
            if (value.ToString() == "")
            {
                roomcharges = 0;
            }
            else
            {
                roomcharges = value; 
            }
          
        }
    }
    public int Medicinecharge
    {
        get { return medicinecharge; }
        set { 
            
            if (value.ToString() == "")
            {
                medicinecharge =0;
            }
            else
            {
                medicinecharge = value;
            }
        }
    }
    public int Extracharge
    {
        get { return extracharge; }
        set
        {
            if (value.ToString() == "")
            {
                extracharge = 0; 
            }
            else
            {
                extracharge = value; 
            }
           
        }
    }
    public int Totcharge
    {
        get { return totcharge; }
        set
        {
            if (value.ToString() == "")
            {
                totcharge = 0; 
            }
            else
            {
                totcharge = value; 
            }
           
        }
    }
    public void InsertDischargePatient()
    {
        SqlParameter[] p = new SqlParameter[26];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@name", this.name);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@hname", this.hname);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@complain", this.complain);
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
        p[9] = new SqlParameter("@doctorname", this.doctorname);
        p[9].DbType = DbType.String;
        p[10] = new SqlParameter("@roomname", this.roomname);
        p[10].DbType = DbType.String;
        p[11] = new SqlParameter("@inout", this.inout);
        p[11].DbType = DbType.String;
        p[12] = new SqlParameter("@admitdate", this.admitdate);
        p[12].DbType = DbType.DateTime;
        p[13] = new SqlParameter("@admittime", this.admittime);
        p[13].DbType = DbType.String;
        p[14] = new SqlParameter("@dischargedate", this.dischargedate);
        p[14].DbType = DbType.DateTime;
        p[15] = new SqlParameter("@dischargetime", this.dischargetime);
        p[15].DbType = DbType.String;
        p[16] = new SqlParameter("@age", this.age);
        p[16].DbType = DbType.Int16;
        p[17] = new SqlParameter("@daystayed", this.daystayed);
        p[17].DbType = DbType.String;
        p[18] = new SqlParameter("@advance", this.advance);
        p[18].DbType = DbType.Int32;
        p[19] = new SqlParameter("@doctorcharges", this.doctorcharges);
        p[19].DbType = DbType.Int32;
        p[20] = new SqlParameter("@testcharges", this.testcharges);
        p[20].DbType = DbType.Int32;
        p[21] = new SqlParameter("@roomcharges", this.roomcharges);
        p[21].DbType = DbType.Int32;
        p[22] = new SqlParameter("@medicinecharge", this.medicinecharge);
        p[22].DbType = DbType.Int32;
        p[23] = new SqlParameter("@extracharge", this.extracharge);
        p[23].DbType = DbType.Int32;
        p[24] = new SqlParameter("@totcharge", this.totcharge);
        p[24].DbType = DbType.Int32;
        p[25] = new SqlParameter("@condition", this.condition);
        p[25].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpInsertDischargePatient", p);
    }
}
