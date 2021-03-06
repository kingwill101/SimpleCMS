using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SimpleCMS.Models;

namespace SimpleCMS
{
    public partial class CommentSectionControl : UserControl
    {
        private static readonly object CommentSubmit = new object();

        public Post Post;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (SimpleCMS.Site.UserFromCookie(Request) == null)
            {
                Button1.Enabled = false;
            }
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            var user = SimpleCMS.Site.UserFromCookie(Request);

            if (user == null) return;

            if (!Database.Comment.Create(Post.Id, user.Id, CommentBox.Text)) return;

            CommentBox.Text = "";
            var eventHandler = (EventHandler) Events[CommentSubmit];
            eventHandler?.Invoke(this, e);
        }

        public event EventHandler CommentSubmitted
        {
            add => Events.AddHandler(CommentSubmit, value);
            remove => Events.RemoveHandler(CommentSubmit, value);
        }
    }
}