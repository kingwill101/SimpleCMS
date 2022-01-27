using System;
using System.ComponentModel;
using System.Web.UI;
using SimpleCMS.Models;

namespace SimpleCMS.Views
{
    [DefaultProperty("Title")]
    public partial class PostEdit : UserControl
    {
        private static readonly object PostSubmit = new object();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (State.Length == 0)
                {
                    State = "Save";
                }

                if (Post != null)
                {
                    Title = Post.Title;
                    Content = Post.Content;
                }
                Button1.Text = State;
            }
        }

        public Models.Post Post { get; set; }

        public string State { get; set; }

        public string Title
        {
            set
            {
                PostTitle.Text = value;
                ViewState["Title"] = value;
            }

            get
            {
                var title = (string) ViewState["Title"];

                return title ?? "";
            }
        }

        public string Content
        {
            set
            {
                ContentTextArea.Value = value;
                ViewState["Content"] = value;
            }

            get
            {
                var content = (string) ViewState["Content"];

                return content ?? "";
            }
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) return;
            Content = ContentTextArea.Value;
            Console.WriteLine(Content);

            var eventHandler = (EventHandler) Events[PostSubmit];
            eventHandler?.Invoke(this, e);
        }

        public event EventHandler PostSubmitted
        {
            add => Events.AddHandler(PostSubmit, value);
            remove => Events.RemoveHandler(PostSubmit, value);
        }

        protected void PostTitle_OnTextChanged(object sender, EventArgs e)
        {
            Title = PostTitle.Text;
        }
    }
}