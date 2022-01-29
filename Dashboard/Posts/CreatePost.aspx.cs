using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit.HtmlEditor;
using Microsoft.Ajax.Utilities;
using SimpleCMS.Database;

namespace SimpleCMS.Dashboard.Posts
{
    public partial class CreatePost : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Edit.PostSubmitted += (o, args) =>
            {
                if (!CheckBoxList1.SelectedValue.IsNullOrWhiteSpace())
                {
                    try
                    {
                        var post = Post.Create(1, Edit.Title, Edit.Content);


                        var selectedItems = CheckBoxList1.Items
                            .Cast<ListItem>()
                            .Where(li => li.Selected)
                            .ToList();

                        var ids = selectedItems.Select(item => Convert.ToInt32(item.Value)).ToList();
                        Post.AddCategories(post.Id, ids);

                        Response.Redirect($"EditPost.aspx?post_id={post.Id}");
                    }
                    catch (Exception exception)
                    {
                        postCreateMessage.Text = exception.Message;
                    }
                }
                else
                {
                    postCreateMessage.Text = "A category is required for the post";
                    postCreateMessage.Style["color"] = "red";
                    postCreateMessage.Style["font-size"] = "14px";
                }
            };
        }
    }
}