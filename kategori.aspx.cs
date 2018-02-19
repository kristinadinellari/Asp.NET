using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kategori : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) { }

    protected void Butoni_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://www.pastemagazine.com/articles/2016/02/the-30-best-fantasy-book-series-of-all-time.html?a=1");
    }
    protected void Butoni3_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.telegraph.co.uk/culture/books/10620356/The-15-best-comedy-books-of-all-time.html");
    }
    protected void Butoni2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.artofmanliness.com/2009/06/02/the-essential-man%e2%80%99s-library-adventure-edition-part-one-fiction/");
    }
    protected void Butoni9_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://bestsciencefictionbooks.com/best-science-fiction-books-of-2014.php");
    }
    protected void Butoni4_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://www.theguardian.com/books/2016/dec/01/best-politics-books-2016-gaby-hinsliff");
    }
    protected void Butoni5_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.telegraph.co.uk/culture/books/10630791/Best-war-and-history-books-of-all-time.html");
    }
      

    
}

       