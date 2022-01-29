using System;
using System.Web.UI;

namespace SimpleCMS.Dashboard.Users
{
    public partial class CreateUser : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void CreateUseBtn_OnClick(object sender, EventArgs e)
        {
            try
            {
                var userId = Services.Service.Register(
                    FirstName.Text,
                    LastName.Text,
                    Email.Text,
                    Password.Text,
                    Username.Text,
                    Convert.ToInt32(Role.Text)
                );

                var user = Database.User.Read(userId);

                Response.Redirect("~/Dashboard/Users/EditUser.aspx?user_id?" + user.Id);
            }
            catch (Exception exception)
            {
                return;
            }
        }
    }
}