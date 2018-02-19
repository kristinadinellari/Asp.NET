using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;


public partial class account_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    private string EnkriptoPassword(string fjalkalimi)
    {
        byte[] bytes = Encoding.ASCII.GetBytes(fjalkalimi);
        bytes = new SHA512Managed().ComputeHash(bytes);
        return Encoding.ASCII.GetString(bytes);
    }

    protected void register_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["barcafe_onlineConnectionString2"].ConnectionString);

            con.Open();
            SqlCommand check = new SqlCommand("SELECT COUNT(*) FROM Perdorues WHERE Emri = @name", con);
            check.Parameters.AddWithValue("@name", emer.Text.Trim().ToLower());
            bool exists = (int)check.ExecuteScalar() > 0;   // Username exists?
            con.Close();

            if (!exists)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Perdorues (Emri,Email,Fjalkalimi,Datelindja,Administratori) values(@Emri,@Email,@Fjalkalimi,@Datelindja,1)", con);

                cmd.Parameters.AddWithValue("@Emri", emer.Text.Trim().ToLower());
                cmd.Parameters.AddWithValue("@Email", email.Text.ToLower());
                cmd.Parameters.AddWithValue("@Datelindja", datlindja.Text);

                string cipher = EnkriptoPassword(fjalkalimi.Text);
                cmd.Parameters.AddWithValue("@Fjalkalimi", cipher);

                cmd.ExecuteNonQuery();

                Response.Redirect("~/account/login.aspx");
                Response.Write("Ju u regjistruat me sukses");
                con.Close();
            }
            else
            {
                Error.Text = "Ky emer eshte i perdorur, ju lutem provoni nje tjeter!";
            }
        }
    }
}