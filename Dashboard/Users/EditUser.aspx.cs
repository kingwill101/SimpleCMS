using System;
using System.Web.UI;

namespace SimpleCMS.Dashboard.Users
{
    public partial class EditUser : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            var urlId = Request.QueryString["user_id"];

            if (urlId == null) return;
            try
            {
                var userId = Convert.ToInt32(urlId);
                var user = Database.User.Read(userId);

                FirstName.Text = user.FirstName;
                LastName.Text = user.LastName;
                Email.Text = user.Email;
                Role.Text = user.Role.ToString();
                Username.Text = user.Username;
                UserID.Value = urlId;
            }
            catch (Exception)
            {
                // ignored
            }
        }

        protected void CreateUseBtn_OnClick(object sender, EventArgs e)
        {
            var result = Database.User.Update(
                Convert.ToInt32(UserID.Value),
                FirstName.Text,
                LastName.Text,
                Email.Text,
                pw: Password.Text,
                username: Username.Text,
                role: Convert.ToInt32(Role.Text)
            );

            if (result)
            {
                Response.Redirect("EditUser.aspx?user_id=" + UserID.Value);
            }
        }
    }
}