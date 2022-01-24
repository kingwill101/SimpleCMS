using System;
using System.Web.UI;
using Microsoft.Ajax.Utilities;
using SimpleCMS.Database;

namespace SimpleCMS.Views.Dashboard.Posts
{
    public partial class EditPost : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var postId = Request.QueryString["post_id"];
            try
            {
                Editor.Post = Post.Read(Convert.ToInt32(postId));
                Editor.PostSubmitted += (o, args) =>
                {
                    if (Post.Update(Editor.Post.Id, Editor.Title, Editor.Content))
                    {
                        Response.Redirect($"EditPost.aspx?post_id={postId}");
                    }
                };
            }
            catch (Exception ex)
            {
            }
        }
    }
}