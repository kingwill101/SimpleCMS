using System;
using System.Web.UI;

namespace SimpleCMS.Dashboard
{
    public partial class Layout : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var url = Request.RawUrl;
            if (url.StartsWith("/Dashboard"))
            {
                var userId = Session["user"];
                if (userId == null)
                {
                    Response.Redirect("~/Login.aspx?refer="+url);
                }
            }
        }
    }
}