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

public partial class servey : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["MyUser"] == null)
        {
            Response.Redirect("index.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

     string ans1 = servey1.SelectedValue;
        if(ans1=="10")
        {
            if (Application["servey1-10"] == null)
                Application["servey1-10"] = 1;
            else
            {
                int n = (int)Application["servey1-10"];
                Application["servey1-10"] = n + 1;
            }
        }
        if (ans1 == "22")
        {
            if (Application["servey1-22"] == null)
                Application["servey1-22"] = 1;
            else
            {
                int n = (int)Application["servey1-22"];
                Application["servey1-22"] = n + 1;
            }
        }

        string ans2 = servey2.SelectedValue;
        if (ans2 == "comedy")
        {
            if (Application["servey2-comedy"] == null)
                Application["servey2-comedy"] = 1;
            else
            {
                int n = (int)Application["servey2-comedy"];
                Application["servey2-comedy"] = n + 1;
            }
        }

        if (ans2 == "drama")
        {
            if (Application["servey2-drama"] == null)
                Application["servey2-drama"] = 1;
            else
            {
                int n = (int)Application["servey2-drama"];
                Application["servey2-drama"] = n + 1;
            }
        }

        if (ans2 == "action")
        {
            if (Application["servey2-action"] == null)
                Application["servey2-action"] = 1;
            else
            {
                int n = (int)Application["servey2-action"];
                Application["servey2-action"] = n + 1;
            }
        }

        if (ans2 == "horrow")
        {
            if (Application["servey2-horrow"] == null)
                Application["servey2-horrow"] = 1;
            else
            {
                int n = (int)Application["servey2-horrow"];
                Application["servey2-horrow"] = n + 1;
            }
        }

        if (ans2 == "roman")
        {
            if (Application["servey2-roman"] == null)
                Application["servey2-roman"] = 1;
            else
            {
                int n = (int)Application["servey2-roman"];
                Application["servey2-roman"] = n + 1;
            }
        }

        if (ans2 == "tens")
        {
            if (Application["servey2-tens"] == null)
                Application["servey2-tens"] = 1;
            else
            {
                int n = (int)Application["servey2-tens"];
                Application["servey2-tens"] = n + 1;
            }
        }

        string ans3 = servey3.SelectedValue;
        if (ans3 == "love+")
        {
            if (Application["servey3-love+"] == null)
                Application["servey3-love+"] = 1;
            else
            {
                int n = (int)Application["servey3-love+"];
                Application["servey3-love+"] = n + 1;
            }
        }
        if (ans3 == "love")
        {
            if (Application["servey3-love"] == null)
                Application["servey3-love"] = 1;
            else
            {
                int n = (int)Application["servey3-love"];
                Application["servey3-love"] = n + 1;
            }
        }

        if (ans3 == "midium")
        {
            if (Application["servey3-midium"] == null)
                Application["servey3-midium"] = 1;
            else
            {
                int n = (int)Application["servey3-midium"];
                Application["servey3-midium"] = n + 1;
            }
        }

        if (ans3 == "notlove")
        {
            if (Application["servey3-notlove"] == null)
                Application["servey3-notlove"] = 1;
            else
            {
                int n = (int)Application["servey3-notlove"];
                Application["servey3-notlove"] = n + 1;
            }
        }

        if (ans3 == "hate")
        {
            if (Application["servey3-hate"] == null)
                Application["servey3-hate"] = 1;
            else
            {
                int n = (int)Application["servey3-hate"];
                Application["servey3-hate"] = n + 1;
            }
        }

        string ans4 = servey4.SelectedValue;
        if (ans4 == "veraity")
        {
            if (Application["servey4-veraity"] == null)
                Application["servey4-veraity"] = 1;
            else
            {
                int n = (int)Application["servey4-veraity"];
                Application["servey4-veraity"] = n + 1;
            }
        }

        if (ans4 == "midium")
        {
            if (Application["midium"] == null)
                Application["midium"] = 1;
            else
            {
                int n = (int)Application["midium"];
                Application["midium"] = n + 1;
            }
        }
        if (ans4 == "notverayaty")
        {
            if (Application["servey4-notverayaty"] == null)
                Application["servey4-notverayaty"] = 1;
            else
            {
                int n = (int)Application["servey4-notverayaty"];
                Application["servey4-notverayaty"] = n + 1;
            }
        }


        string ans5 = servey5.SelectedValue;
        if (ans5 == "agree+")
        {
            if (Application["servey5-agree+"] == null)
                Application["servey5-agree+"] = 1;
            else
            {
                int n = (int)Application["servey5-agree+"];
                Application["servey5-agree+"] = n + 1;
            }
        }

        if (ans5 == "agree")
        {
            if (Application["servey5-agree"] == null)
                Application["servey5-agree"] = 1;
            else
            {
                int n = (int)Application["servey5-agree"];
                Application["servey5-agree"] = n + 1;
            }
        }
        if (ans5 == "midium")
        {
            if (Application["servey5-midium"] == null)
                Application["servey5-midium"] = 1;
            else
            {
                int n = (int)Application["servey5-midium"];
                Application["servey5-midium"] = n + 1;
            }
        }
        if (ans5 == "notagree")
        {
            if (Application["servey5-notagree"] == null)
                Application["servey5-notagree"] = 1;
            else
            {
                int n = (int)Application["servey5-notagree"];
                Application["servey5-notagree"] = n + 1;
            }
        }
        if (ans5 == "notagree+")
        {
            if (Application["servey5-notagree+"] == null)
                Application["servey5-notagree+"] = 1;
            else
            {
                int n = (int)Application["servey5-notagree+"];
                Application["servey5-notagree+"] = n + 1;
            }
        }


        string ans6 = servey6.SelectedValue;
        if (ans6 == "nehederet")
        {
            if (Application["servey6-nehederet"] == null)
                Application["servey6-nehederet"] = 1;
            else
            {
                int n = (int)Application["servey6-nehederet"];
                Application["servey6-nehederet"] = n + 1;
            }
        }

        if (ans6 == "mitbah")
        {
            if (Application["servey6-mitbah"] == null)
                Application["servey6-mitbah"] = 1;
            else
            {
                int n = (int)Application["servey6-mitbah"];
                Application["servey6-mitbah"] = n + 1;
            }
        }

        if (ans6 == "masa")
        {
            if (Application["servey6-masa"] == null)
                Application["servey6-masa"] = 1;
            else
            {
                int n = (int)Application["servey6-masa"];
                Application["servey6-masa"] = n + 1;
            }
        }
        if (ans6 == "krav")
        {
            if (Application["servey6-krav"] == null)
                Application["servey6-krav"] = 1;
            else
            {
                int n = (int)Application["servey6-krav"];
                Application["servey6-krav"] = n + 1;
            }
        }
        if (ans6 == "alufim")
        {
            if (Application["servey6-alufim"] == null)
                Application["servey6-alufim"] = 1;
            else
            {
                int n = (int)Application["servey6-alufim"];
                Application["servey6-alufim"] = n + 1;
            }
        }
        if (ans6 == "mea")
        {
            if (Application["servey6-mea"] == null)
                Application["servey6-mea"] = 1;
            else
            {
                int n = (int)Application["servey6-mea"];
                Application["servey6-mea"] = n + 1;
            }
        }
        if (ans6 == "news")
        {
            if (Application["servey6-news"] == null)
                Application["servey6-news"] = 1;
            else
            {
                int n = (int)Application["servey6-news"];
                Application["servey6-news"] = n + 1;
            }
        }
        if (ans6 == "hisardut")
        {
            if (Application["servey6-hisardut"] == null)
                Application["servey6-hisardut"] = 1;
            else
            {
                int n = (int)Application["servey6-hisardut"];
                Application["servey6-hisardut"] = n + 1;
            }
        }

        lblResult.Visible = true;



    }
}
