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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        
        string strUser = txtUserName.Text;
        string strPwd = txtPassword.Text;

        if (Authentication.IfUserAdmin(strUser, strPwd))
        {
            Session["MyUser"] = strUser;
            Session["Admin"] = true;
            
            Response.Redirect("index.aspx");
        }

        else if (Authentication.IfUserLegal(strUser, strPwd))
        {
            Session["MyUser"] = strUser;
            Session["Admin"] = false;

            Response.Redirect("index.aspx");
        }
        else
        {
            lblResult.Text = "פרטיך לא מופיעים במערכת, אנא הרשם ונסה שוב";
        }


    }
}
