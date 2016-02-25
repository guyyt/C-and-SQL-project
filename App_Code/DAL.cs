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

/// <summary>
/// Summary description for DAL
/// </summary>
public class DAL
{
        static private string ConnectionString()
    {
        return @"data source=ad.ohel-shem.com;initial catalog=DByomtov;User ID=yomtov;Password=5430";
        //localhost
    }
    public static void ExecuteNonQuery(string sqlStr)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConnectionString();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandText = sqlStr;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    static public DataSet GetDataSet(string sqlStr)
    {
        DataSet ds = new DataSet();
        SqlConnection conn = new SqlConnection(ConnectionString());
        SqlCommand cmd = new SqlCommand(sqlStr, conn);
        SqlDataAdapter adapter = new SqlDataAdapter(sqlStr, conn);
        adapter.Fill(ds);
        return ds;
    }
		//
		// TODO: Add constructor logic here
		//
	}

