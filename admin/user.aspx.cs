using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class admin_user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            SqlConnection sql = new SqlConnection(WebConfigurationManager.ConnectionStrings["barcafe_onlineConnectionString2"].ConnectionString);
            sql.Open();
            SqlCommand cmd = new SqlCommand(
                "SELECT Administratori FROM Perdorues WHERE Id_User=" + Session["userId"], sql);
            bool isAdmin = (bool)cmd.ExecuteScalar();
            if (!isAdmin)
            {
                Response.Redirect("~/");
            }
        }
        else
            Response.Redirect("~/");
    }
}