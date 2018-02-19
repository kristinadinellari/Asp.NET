using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Text;
using System.Security.Cryptography;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["barcafe_onlineConnectionString2"].ConnectionString);
        con.Open();

        byte[] bytes = Encoding.ASCII.GetBytes(fjalkalimi.Text);
        bytes = new SHA512Managed().ComputeHash(bytes);
        string encrypted = Encoding.ASCII.GetString(bytes);

        SqlCommand cmd = new SqlCommand("select Id_User from Perdorues where Emri=@name and Fjalkalimi=@pass", con);
        cmd.Parameters.AddWithValue("@name", emer.Text);
        cmd.Parameters.AddWithValue("@pass", encrypted);

        int res = 0;
        try
        {
            res = (int)cmd.ExecuteScalar();
        }
        catch (Exception)
        {
            res = 0;
        }

        con.Close();

        if (res > 0)
        {
            Session["user"] = emer.Text;
            Session["userId"] = res.ToString();
            con.Open();
            SqlCommand admin = new SqlCommand("select Administratori from Perdorues where Id_User=@res", con);
            admin.Parameters.AddWithValue("@res", res.ToString());
            bool isadmin = (bool)admin.ExecuteScalar();

            if (RememberMe.Checked)
            {
                HttpCookie rememberme = new HttpCookie("user");
                rememberme.Value = emer.Text + ":" + res.ToString();
                rememberme.Expires = DateTime.Now.AddDays(30.0);
                Response.SetCookie(rememberme);
            }
            if (isadmin)
            {
                Response.Redirect("~/admin/dbconfig.aspx");
            }
            else
                Response.Redirect("~/account/profile.aspx");
        }
        else
        {
            label.Text = "Kredencialet jane te gabuara!";
        }
    }
}