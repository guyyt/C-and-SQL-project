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

public partial class calc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session ["MyUser"]== null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            lablwelcome.Text += Session["myUser"].ToString();
        }

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int first = int.Parse(TextBox1.Text);
        int second = int.Parse(TextBox2.Text);

        int sum = heshbon.Sum(first, second);

        TextBox3.Text = sum.ToString();
    }
}
