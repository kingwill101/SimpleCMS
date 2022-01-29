using System;
using System.Collections.Generic;
using System.Web.UI;
using SimpleCMS.Database;
using Post = SimpleCMS.Models.Post;

namespace SimpleCMS
{
    public partial class AuthorView : Page
    {
        private Models.User _user;
        protected List<Post> Posts;

        protected AuthorView()
        {
            Posts = new List<Post>();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Request.QueryString.HasKeys()) return;
            var user = Request.QueryString["author_id"]; 
                
            try
            {
                var userId = Convert.ToInt32(user);
                _user = Database.User.Read(userId);
                Posts = Database.Post.ListUserPost(_user.Id);
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                Response.Redirect($"NotFound.aspx");
            }
        }
    }
}