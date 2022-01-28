using System.Linq;
using System.Text.RegularExpressions;
using HtmlAgilityPack;
using Microsoft.Ajax.Utilities;

namespace SimpleCMS
{
    public class Site
    {
        public const string SiteTitleKey = "site.title";
        public const string SiteAdminEmailKey = "admin.email";
        public const string SiteCopyrightKey = "site.copyright";
        public const string SiteDescriptionKey = "site.description";

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

            if (!htmlNodes.First().Attributes.Contains("src")) return "";
            var url = htmlNodes.First().Attributes["src"].Value ?? "";
            return url;
        }

        public static string RoleToString(int role)
        {
            switch (role)
            {
                case 1:
                    return "Administrator";
                case 2:
                    return "Author";
                case 3:
                    return "Editor";
                case 4:
                    return "Contributor";
                default:
                    return "Unknown";
            }
        }

        public static bool CanAccessDashboard(Models.User user)
        {
            var roles = new int[] {1, 2, 3};

            return roles.Contains(user.Role);
        }
    }
}