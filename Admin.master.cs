using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["user"] != null)
        {
            ProfileLink.Text = Session["user"].ToString();
            Login.Text = "Logout";
            ProfileHolder.Visible = true;
        }
    }

    protected void LoginStatus(object sender, EventArgs e)
    {
        if (Request.Cookies["user"] != null)
        {
            Response.Cookies["user"].Expires = new DateTime(6, 6, 6);
            Response.SetCookie(Response.Cookies["user"]);
        }
        if (Session["user"] != null)
        {
            Session.Remove("user");
            Session.Remove("userId");
        }
        Response.Redirect("~/account/login.aspx");
    }
}
