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

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["MyUser"] == null)
        {
            lblmessege.Visible = true;
        }
 
    }
    protected void btmSend_Click(object sender, EventArgs e)
    {
        if (DropDownDays.SelectedValue == "sunMon")
            Response.Redirect("sunMon.aspx");
        else if (DropDownDays.SelectedValue == "thuWen")
            Response.Redirect("thuWen.aspx");
        else if (DropDownDays.SelectedValue == "firFri")
            Response.Redirect("firFri.aspx");
        else if (DropDownDays.SelectedValue == "satarday")
            Response.Redirect("satarday.aspx");
    }
}
