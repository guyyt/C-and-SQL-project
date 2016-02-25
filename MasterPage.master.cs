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

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["MyUser"] != null)
        {
            Label2.Visible = true;
            lablwelcome.Visible = true;
            if (Session["myUser"].ToString()=="admin")
                lablwelcome.Text ="מנהל האתר";
            else
            lablwelcome.Text = Session["myUser"].ToString();
        }
        DayOfWeek.Friday.ToString();
        lblDate.Text=DateTime.Now.ToString();
        if (Session["Admin"] == null)
            return;
        if ((bool)Session["Admin"] == true)

            btmAdminPage.Visible = true;
        btmLogOut.Visible = true;

        if (Session["MyUser"]!=null)
            btmLogOut.Visible = true;
       

    }

    protected void btmLogOut_Click(object sender, EventArgs e)
    {
        Session["Admin"] = null;
        Session["MyUser"] = null;
        Response.Redirect("index.aspx");
    }
    protected void btmAdminPage_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage.aspx");
    }
}
