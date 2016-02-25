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

public partial class regester : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



    }
    protected void btmSubmit_ServerClick(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"data source=ad.ohel-shem.com;initial catalog=DByomtov;User ID=yomtov;Password=5430");
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "StoredProcedure1";
        if ((txtFirstNameRG.Text == "") || (txtLastNameRG.Text == "") || (txtUserNameRG.Text == "") || (txtPasswordRG.Text == "") || (txtEmailRG.Text == ""))
        {
            txtNot.Visible = true;
        }
        else
        {
            string userName = txtUserNameRG.Text;
            string sql = "SELECT * FROM usersInfo WHERE userName = '" + userName + "'";
            if (DAL.GetDataSet(sql).Tables[0].Rows.Count != 0)
            {
                txtNotUser.Visible = true;
            }
            else
            {
                cmd.Parameters.AddWithValue("@fn", txtFirstNameRG.Text);
                cmd.Parameters.AddWithValue("@ln", txtLastNameRG.Text);
                cmd.Parameters.AddWithValue("@user", txtUserNameRG.Text);
                cmd.Parameters.AddWithValue("@pass", txtPasswordRG.Text);
                cmd.Parameters.AddWithValue("@email", txtEmailRG.Text);
                cmd.Parameters.AddWithValue("@gender", genderSelect.SelectedValue);
                cmd.Parameters.AddWithValue("@phone", DropDownPhone.SelectedValue + "-" + txtPhoneNumRG2.Text);
                cmd.Parameters.AddWithValue("@birth", txtBDay.Text + "/" + txtBMonth.Text + "/" + txtBYear.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("login.aspx");
            }
        }
    }
}
