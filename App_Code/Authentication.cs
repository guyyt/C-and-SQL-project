using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for Authentication
/// </summary>
public class Authentication
{
    public static bool IfUserLegal(string user, string pass)
    {
        DataSet ds = DAL.GetDataSet("SELECT * FROM usersInfo where userName='" + user + "' and Pass='" + pass + "'");
        if (ds.Tables[0].Rows.Count!=0)
            return true;
       return false;
    }
    public static bool IfUserAdmin(string user, string pass)
    {
        if ((user==pass)&&(user=="admin"))
            return true;
        return false;
    }


}
