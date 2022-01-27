using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Ajax.Utilities;
using SimpleCMS.Database;

namespace SimpleCMS.Dashboard.Posts
{
    public partial class EditPost : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var postId = Request.QueryString["post_id"];
            try
            {
                var id = Convert.ToInt32(postId);

                CheckBoxList1.DataBound += (o, args) =>
                {
                    try
                    {
                        var categories = Category.PostCategories(id);

                        foreach (ListItem item in CheckBoxList1.Items)
                        {
                            var courseItem = categories.FindIndex(val => val.Id.ToString() == item.Value);

                            if (courseItem != -1)
                            {
                                item.Selected = true;
                            }
                        }
                    }
                    catch (Exception err)
                    {
                        Console.WriteLine(err.Message);
                    }
                };

                Editor.Post = Post.Read(id);
                Editor.PostSubmitted += (o, args) =>
                {
                    if (!Post.Update(Editor.Post.Id, Editor.Title, Editor.Content)) return;
                    var selectedItems = CheckBoxList1.Items
                        .Cast<ListItem>()
                        .Where(li => li.Selected)
                        .ToList();

                    var ids = selectedItems.Select(item => Convert.ToInt32(item.Value)).ToList();
                    Post.AddCategories(Editor.Post.Id, ids);

                    Response.Redirect($"EditPost.aspx?post_id={postId}");
                };
            }
            catch (Exception)
            {
                Response.Redirect($"NotFound.aspx");
            }
        }
    }
}