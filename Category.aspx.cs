using System;
using System.Collections.Generic;
using System.Web.UI;
using SimpleCMS.Database;
using Post = SimpleCMS.Models.Post;

namespace SimpleCMS
{
    public partial class CategoryView : Page
    {
        private Models.Category _category;
        protected List<Post> Posts;

        protected CategoryView()
        {
            Posts = new List<Post>();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Request.QueryString.HasKeys()) return;
            var category = Request.QueryString["category_id"];

            try
            {
                var cat = Convert.ToInt32(category);
                _category = Category.Read(cat);
                Posts = Database.Post.List(_category.Id);

                CategoryTitle.Text = _category.Name;
                CategoryDescription.Text = _category.Description;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                Response.Redirect($"NotFound.aspx");
            }
        }
    }
}