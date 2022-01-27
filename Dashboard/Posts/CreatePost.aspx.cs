using System;
using System.Web.UI;

namespace SimpleCMS.Dashboard.Posts
{
    public partial class CreatePost : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Edit.PostSubmitted += (o, args) =>
            {
                var postId = Database.Post.Create(1, Edit.Title, Edit.Content);
                if (postId != -1)
                {
                    Response.Redirect($"EditPost.aspx?post_id={postId}");
                }
            };
        }
    }
}