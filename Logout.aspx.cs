using System;
using System.Text;
using System.Web;
using System.Web.UI;

namespace SimpleCMS
{
    public partial class Logout : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Cancel the current session
            Session.Abandon();
            if (Request.Cookies["identifier"] == null) return;
            Request.Cookies.Clear();
            
            // force expire the identifier cookie
            var cookie = new HttpCookie("identifier")
            {
                Expires = DateTime.Now.AddDays(-100),
                Path = "/",
                HttpOnly = false,
            };
            Response.Cookies.Add(cookie);
            //Redirect to the homepage
            Response.Redirect("~/Default.aspx");
        }
    }
}