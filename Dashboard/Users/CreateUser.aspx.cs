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
            
            var result = Database.User.Create(FirstName.Text,
                LastName.Text,
                Email.Text,
                Password.Text,
                role: Convert.ToInt32(Role.Text),
                username: Username.Text
            );

            if (result)
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}