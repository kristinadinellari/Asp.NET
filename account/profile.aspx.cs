using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class account_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("~/account/login.aspx");
        else
            Username.Text = Session["user"].ToString();

        string connStr = WebConfigurationManager.ConnectionStrings["barcafe_onlineConnectionString2"].ConnectionString;
        SqlConnection sql = new SqlConnection(connStr);
        string query = "SELECT Administratori FROM Perdorues WHERE Id_User = " + Session["userId"].ToString();
        SqlCommand cmd = new SqlCommand(query, sql);

        bool isAdmin = false;
        sql.Open();
        try
        {
            isAdmin = (bool)cmd.ExecuteScalar();
        }
        catch (NullReferenceException)
        {
            isAdmin = false;
        }
        sql.Close();

        if (isAdmin)
        {
            AdminLink.Visible = true;
        }

        PurchasedBooks();
    }
    protected void porosit_Click(object sender, EventArgs e)
    {
        string connStr = WebConfigurationManager.ConnectionStrings["barcafe_onlineConnectionString2"].ConnectionString;
        List<string> bookData = new List<string>();
        using (SqlConnection sql = new SqlConnection(connStr))
        {
            sql.Open();
            string query = "SELECT URL_IMG,Titulli,Id_Produkti,Renditja FROM Produkte WHERE Id_Produkti=@id";
            SqlCommand cmd = new SqlCommand(query, sql);
            cmd.Parameters.AddWithValue("@id", Produkte.SelectedValue);
            int renditja = 0;

            SqlDataReader data = cmd.ExecuteReader();
            while (data.Read())
            {
                bookData.Add((string)data["Id_Produkti"]);
                bookData.Add((string)data["Titulli"]);
                bookData.Add((string)data["URL_IMG"]);
                renditja = (int)data["Renditja"];
            }

            if (bookData[0] == "LIBRI10")   // Ignore this
                --renditja;                 // And this
            else                            // Also this
                ++renditja;
            sql.Close();    // Nuk mund te ekzekutohen dy komanda me nje lidhje
            sql.Open();

            query = "UPDATE Produkte SET Renditja = " + renditja.ToString() + " WHERE Id_Produkti='" + bookData[0] + "';"
                + "INSERT INTO Produkte_Perdorues (Id_Produkti, Id_User) VALUES ('" + bookData[0] + "'," + Session["userId"].ToString() + ")";
            SqlCommand update = new SqlCommand(query, sql);
            update.ExecuteNonQuery();

            sql.Close();
        }

        string filename = bookData[2].Substring(0, bookData[2].Length - 3) + "pdf";
        string path = Path.GetFullPath(Server.MapPath("~/files/pdf/" + filename));   // "~/files/pdf/book-name.pdf"
        FileInfo file = new FileInfo(path);
        if (file.Exists)
        {
            Response.Clear();
            Response.ClearHeaders();
            Response.ClearContent();

            Response.AddHeader("Content-Disposition", "attachment; filename=" + filename.Replace('-', ' '));
            Response.AddHeader("Content-Length", file.Length.ToString());
            Response.ContentType = "application/pdf";
            Response.Flush();

            Response.TransmitFile(path);
            Response.End();
        }
        else
            debug.Text = "File " + filename + " nuk ekziston!";
    }

    private void PurchasedBooks()
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["barcafe_onlineConnectionString2"].ConnectionString;

        SqlConnection con = new SqlConnection(connectionString);

        string query = 
              "SELECT DISTINCT Produkte.Titulli AS Titulli, Produkte.Autori AS Autori, Produkte.URL_IMG AS img, "
            + "Produkte.*, Perdorues.* "
            + "FROM Produkte_Perdorues "
            + "INNER JOIN Produkte "
                + "ON Produkte.Id_Produkti=Produkte_Perdorues.Id_Produkti "
            + "INNER JOIN Perdorues "
                + "ON Perdorues.Id_User=Produkte_Perdorues.Id_User "
            + "WHERE Perdorues.Id_User=@user";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@user", Session["userId"].ToString());

        List<List<string>> books = new List<List<string>>();

        try
        {
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                books.Add(new List<string>()
                    {
                        reader["Titulli"].ToString(),   // book[i][0] : Titulli
                        reader["Autori"].ToString()     // book[i][1] : Autori
                        //reader["img"].ToString()      // book[i][2] : URL_IMG
                    }
                );
            }
        }
        catch(SqlException)
        {
            // Whatever
        }
        
        Shitjet.Text = "Produktet e porositur jane:<br />";
        foreach(List<string> row in books)
        {
            Shitjet.Text += "<em>" + row[0] + "</em> nga <em>" + row[1] + "</em><br />";
        }
    }
}