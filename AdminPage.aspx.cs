using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class AdminPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("index.aspx");
        }



        if (Application["servey1-10"] == null)
            Application["servey1-10"] = 0;

        if (Application["servey1-22"] == null)
            Application["servey1-22"] = 0;

        if (Application["servey2-comedy"] == null)
            Application["servey2-comedy"] = 0;



        if (Application["servey2-drama"] == null)
            Application["servey2-drama"] = 0;


        if (Application["servey2-action"] == null)
            Application["servey2-action"] = 0;

        if (Application["servey2-horrow"] == null)
            Application["servey2-horrow"] = 0;


        if (Application["servey2-roman"] == null)
            Application["servey2-roman"] = 0;

        if (Application["servey2-tens"] == null)
            Application["servey2-tens"] = 0;

        if (Application["servey3-love+"] == null)
            Application["servey3-love+"] = 0;

        if (Application["servey3-love"] == null)
            Application["servey3-love"] = 0;

        if (Application["servey3-midium"] == null)
            Application["servey3-midium"] = 0;

        if (Application["servey3-notlove"] == null)
            Application["servey3-notlove"] = 0;

        if (Application["servey3-hate"] == null)
            Application["servey3-hate"] = 0;

        if (Application["servey4-veraity"] == null)
            Application["servey4-veraity"] = 0;

        if (Application["midium"] == null)
            Application["midium"] = 0;

        if (Application["servey4-notverayaty"] == null)
            Application["servey4-notverayaty"] = 0;

        if (Application["servey5-agree+"] == null)
            Application["servey5-agree+"] = 0;

        if (Application["servey5-agree"] == null)
            Application["servey5-agree"] = 0;

        if (Application["servey5-midium"] == null)
            Application["servey5-midium"] = 0;

        if (Application["servey5-notagree"] == null)
            Application["servey5-notagree"] = 0;

        if (Application["servey5-notagree+"] == null)
            Application["servey5-notagree+"] = 0;

        if (Application["servey6-nehederet"] == null)
            Application["servey6-nehederet"] = 0;

        if (Application["servey6-mitbah"] == null)
            Application["servey6-mitbah"] = 0;

        if (Application["servey6-masa"] == null)
            Application["servey6-masa"] = 0;

        if (Application["servey6-krav"] == null)
            Application["servey6-krav"] = 0;

        if (Application["servey6-alufim"] == null)
            Application["servey6-alufim"] = 0;

        if (Application["servey6-mea"] == null)
            Application["servey6-mea"] = 0;

        if (Application["servey6-news"] == null)
            Application["servey6-news"] = 0;

        if (Application["servey6-hisardut"] == null)
            Application["servey6-hisardut"] = 0;

            Label11.Text = Application["servey1-10"].ToString();
            Label12.Text = Application["servey1-22"].ToString();
            Label21.Text = Application["servey2-comedy"].ToString();
            Label22.Text = Application["servey2-drama"].ToString();
            Label23.Text = Application["servey2-action"].ToString();
            Label24.Text = Application["servey2-horrow"].ToString();
            Label25.Text = Application["servey2-roman"].ToString();
            Label26.Text = Application["servey2-tens"].ToString();
            Label31.Text = Application["servey3-love+"].ToString();
            Label32.Text = Application["servey3-love"].ToString();
            Label33.Text = Application["servey3-midium"].ToString();
            Label34.Text = Application["servey3-notlove"].ToString();
            Label35.Text = Application["servey3-hate"].ToString();
            Label41.Text = Application["servey4-veraity"].ToString();
            Label42.Text = Application["midium"].ToString();
            Label43.Text = Application["servey4-notverayaty"].ToString();
            Label51.Text = Application["servey5-agree+"].ToString();
            Label52.Text = Application["servey5-agree"].ToString();
            Label53.Text = Application["servey5-midium"].ToString();
            Label54.Text = Application["servey5-notagree"].ToString();
            Label55.Text = Application["servey5-notagree+"].ToString();
            Label61.Text = Application["servey6-nehederet"].ToString();
            Label62.Text = Application["servey6-mitbah"].ToString();
            Label63.Text = Application["servey6-masa"].ToString();
            Label64.Text = Application["servey6-krav"].ToString();
            Label65.Text = Application["servey6-alufim"].ToString();
            Label66.Text = Application["servey6-mea"].ToString();
            Label67.Text = Application["servey6-news"].ToString();
           
        
    }

    protected void btnSrcName_Click(object sender, EventArgs e)
    {
        string name = txtSrcName.Text;
        string sql = "SELECT * FROM usersInfo WHERE firstName = '" + name + "'";
        DataSet ds = DAL.GetDataSet(sql);
        txtsearch.Text = ListOfUsers(ds);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string gender = txtSrcGender.Text;
        string sql = "SELECT * FROM usersInfo WHERE gender = '" + gender + "'";
        DataSet ds = DAL.GetDataSet(sql);
        txtsearch.Text = ListOfUsers(ds);

    }

    public string ListOfUsers(DataSet ds)
    {
       
        string allUsersString = "<table style='border:2px solid blue'>";
        //הדפסת שורת הכותרת
        allUsersString += "<tr><td>Id</td><td>User Name</td><td>First Name</td><td>Last Name</td><td>Phone</td><td>Email</td><td>Gender</td><td>Birth</td></tr>";
        foreach (DataRow row in ds.Tables[0].Rows)
        {
            //כאן צריך לעבור על כל המשתמשים,ולהדפיס פרטים
            // בנוסף לאפשר עדכוןומחיקה 
            allUsersString += "<tr>";
            allUsersString += "<td style='border:2px solid blue'>" + row["id"].ToString() + "</td>";
            allUsersString += "<td style='border:2px solid blue'>" + row["userName"].ToString() + "</td>";
            allUsersString += "<td style='border:2px solid blue'>" + row["firstName"].ToString() + "</td>";
            allUsersString += "<td style='border:2px solid blue'>" + row["lastName"].ToString() + "</td>";
            allUsersString += "<td style='border:2px solid blue'>" + row["phone"].ToString() + "</td>";
            allUsersString += "<td style='border:2px solid blue'>" + row["email"].ToString() + "</td>";
            allUsersString += "<td style='border:2px solid blue'>" + row["gender"].ToString() + "</td>";
            allUsersString += "<td style='border:2px solid blue'>" + row["birth"].ToString() + "</td>";
            allUsersString += "<td style='border:2px solid blue'>" + "<a href='updateProfile.aspx?ID=" + row["id"].ToString() + "'>Edit</a>" + "</td>";
            allUsersString += "<td style='border:2px solid blue'>" + "<a href='DeleteProfile.aspx?ID=" + row["id"].ToString() + "'>Delete</a>" + "</td>";
            allUsersString += "</tr>";
        }
        allUsersString += "</table>";
        return allUsersString;
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
      
        //DAL.ExecuteNonQuery("delete from tblUsers where UserId="+e.RowIndex);
    }
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {

    }

}
