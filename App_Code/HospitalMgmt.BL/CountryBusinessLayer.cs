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
/// Summary description for AdminAddingBusinessLayer
/// </summary>


    public class CountryBusinessLayer:Connection
    {
        public static DataSet ds;
        public CountryBusinessLayer()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        string countryName, countryDesc;
        int countryId;
        public int CountryId
        {
            get { return countryId; }
            set { countryId = value; }
        }
        public string CountryName
        {
            get { return countryName; }
            set { countryName = value; }
        }

        public string CountryDesc
        {
            get { return countryDesc; }
            set { countryDesc = value; }
        }

       
        public void InsertCountry()
        {
            SqlParameter[] p = new SqlParameter[2];
            p[0] = new SqlParameter("@CountryName", this.countryName);
            p[0].DbType = DbType.String;
            p[1] = new SqlParameter("@CountryDesc", this.countryDesc);
            p[1].DbType = DbType.String;
            SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpAddCountry", p);

        }
        public DataSet GetCountry()
        {
            ds = new DataSet();
            ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "ShowCountry");
            return ds;
        }
        //public DataSet GetStateByCountry()
        //{
        //    SqlParameter[] p = new SqlParameter[1];
        //    p[0] = new SqlParameter("@countryid", this.countryId);
        //    p[0].DbType = DbType.Int16;
        //    ds = new DataSet();
        //    ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpGetStateByCountry", p);
        //    return ds;
        //}
        //public DataSet GetCountryIdByName()
        //{
        //    SqlParameter[] p = new SqlParameter[1];
        //    p[0] = new SqlParameter("@name", this.countryName);
        //    p[0].DbType = DbType.Int16;
        //    ds = new DataSet();
        //    ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowCountryId", p);
        //    return ds;
        //}
       
}
