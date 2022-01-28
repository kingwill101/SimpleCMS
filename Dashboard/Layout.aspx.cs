using System;
using System.Web.UI;

namespace SimpleCMS.Dashboard
{
    public partial class Layout : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var user = (Models.User) Session["user"];
            if (user == null)
            {
                Response.Redirect("~/Login.aspx?refer=" + Request.RawUrl);
            }

            if (!SimpleCMS.Site.CanAccessDashboard(user))
            {
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}