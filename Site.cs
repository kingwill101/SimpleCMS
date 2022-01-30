using System;
using System.Linq;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using HtmlAgilityPack;
using Microsoft.Ajax.Utilities;

namespace SimpleCMS
{
    public class Site
    {
        /**
     * Common Site settings
     */
        public const string SiteTitleKey = "site.title";
        public const string SiteAdminEmailKey = "site.admin.email";
        public const string SiteCopyrightKey = "site.copyright";
        public const string SiteDescriptionKey = "site.description";
        public const string SiteMenuOrientationKey = "site.menu.orientation";
        public const string SiteMenuHeadingKey = "site.menu.header";
        public const string SitePhoneKey = "site.phone";

        private static string Sanitize(string input)
        {
            return Regex.Replace(input, "<.*?>", string.Empty);
        }

        public static string Excerpt(string input, int size = 30)
        {
            var document = new HtmlDocument();
            document.LoadHtml(input);

            var cleaned = Sanitize(document.DocumentNode.InnerText).Split()
                .Where(el => !el.IsNullOrWhiteSpace()).ToArray();
            var excerpt = cleaned.Length <= size ? string.Join(" ", cleaned) : string.Join(" ", cleaned.Take(size));
            return $"{excerpt}...";
        }

        public static string Image(string input)
        {
            var cleaned = new HtmlDocument();
            cleaned.LoadHtml(input);
            var imgTag = cleaned.DocumentNode.Descendants("img");

            var htmlNodes = imgTag as HtmlNode[] ?? imgTag.ToArray();
            if (!htmlNodes.Any()) return "";

            foreach (var img in htmlNodes)
            {
                if (img.Attributes.Contains("src"))
                {
                    return img.Attributes["src"].Value;
                }
            }

            var rand = new Random();
            
            return $"https://picsum.photos/200/300?random={rand.Next(10)}";
        }

        public static string RoleToString(int role)
        {
            switch (role)
            {
                case Roles.Admin:
                    return "Administrator";
                case Roles.Author:
                    return "Author";
                case Roles.Editor:
                    return "Editor";
                case Roles.Contributor:
                    return "Contributor";
                default:
                    return "Unknown";
            }
        }

        public static bool CanAccessDashboard(Models.User user)
        {
            var roles = new int[] {Roles.Admin, Roles.Author, Roles.Editor};

            return roles.Contains(user.Role);
        }

        public class Roles
        {
            public const int Admin = 1;
            public const int Author = 2;
            public const int Editor = 3;
            public const int Contributor = 4;
        }

        public static HttpCookie CreateCookie(int id)
        {
            var cookie = new HttpCookie("identifier")
            {
                Expires = DateTime.Now.AddDays(2),
                Path = "/",
                HttpOnly = false,
                Value = Convert.ToBase64String(Encoding.UTF8.GetBytes(id.ToString()))
            };

            return cookie;
        }

        public static Models.User UserFromCookie(HttpRequest req)
        {
            if (req.Cookies["identifier"] == null) return null;

            var cookie = req.Cookies["identifier"];
            var cookieValue = cookie.Value;

            try
            {
                var base64EncodedBytes = Convert.FromBase64String(cookieValue);
                var userId = Convert.ToInt32(Encoding.UTF8.GetString(base64EncodedBytes));

                return Services.Service.Author(userId);
            }
            catch (Exception)
            {
                return null;
            }
        }
    }
}