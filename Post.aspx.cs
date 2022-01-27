using System;
using System.Web.UI;

namespace SimpleCMS
{
    public partial class PostView : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var postId = Request.QueryString["post_id"];
            try
            {
                var p = Database.Post.Read(Convert.ToInt32(postId));
                ArticleBody.InnerHtml = p.Content;
                ArticleTitle.InnerText = p.Title;
                Page.Title = p.Title;
                Date.InnerText = p.Created.ToShortDateString();
                // Category.InnerText = Services.Service.
                var author = SimpleCMS.Services.Service.Author(p.UserId);
                Role.InnerText = SimpleCMS.Site.RoleToString(author.Role);
                Author.InnerText = SimpleCMS.Services.Service.Author(p.UserId).ToString();
            }
            catch (Exception)
            {
                Response.Redirect($"NotFound.aspx");
            }
        }
    }
}