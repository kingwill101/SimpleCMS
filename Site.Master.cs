using System;
using System.Web.UI;
using SimpleCMS.Models;

namespace SimpleCMS
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public bool IsLoggedIn => SimpleCMS.Site.UserFromCookie(Request) != null;
        public User CurrentUser => SimpleCMS.Site.UserFromCookie(Request);
    }
}