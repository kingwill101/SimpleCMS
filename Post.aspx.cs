using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using SimpleCMS.Models;
using Post = SimpleCMS.Database.Post;

namespace SimpleCMS
{
    public partial class PostView : Page
    {
        private Models.Post _post;

        protected void Page_Load(object sender, EventArgs e)
        {
            var postId = Request.QueryString["post_id"];
            try
            {
                _post = Database.Post.Read(Convert.ToInt32(postId));
                ArticleBody.InnerHtml = _post.Content;
                ArticleTitle.InnerText = _post.Title;
                Page.Title = _post.Title;
                Date.InnerText = _post.Created.ToShortDateString();
                var author = SimpleCMS.Services.Service.Author(_post.UserId);
                Role.InnerText = SimpleCMS.Site.RoleToString(author.Role);
                Author.InnerText = SimpleCMS.Services.Service.Author(_post.UserId).ToString();

                Database.Category.PostCategories(_post.Id).ForEach(cat =>
                {
                    var c = new HtmlGenericControl();
                    c.TagName = "span";
                    c.Attributes["class"] = "label";

                    var link = new HtmlGenericControl();
                    link.TagName = "a";
                    link.Attributes["class"] = "link";
                    link.InnerText = cat.Name.ToUpper();
                    link.Attributes["href"] = $"/Category.aspx?category_id={cat.Id.ToString()}";

                    var separator = new HtmlGenericControl();
                    separator.TagName = "p";
                    separator.InnerText = " | ";
                    c.Controls.Add(link);

                    Category.Controls.Add(c);
                });

                CommentCreate.Post = _post;

                CommentCreate.CommentSubmitted += (o, args) => { };
            }
            catch (Exception)
            {
                Response.Redirect($"NotFound.aspx");
            }
        }

        protected List<Comment> GetComments()
        {
            return Database.Comment.PostComments(_post.Id);
        }
    }
}