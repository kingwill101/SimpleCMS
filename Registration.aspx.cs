using System;
using System.Web.UI;
using Microsoft.Ajax.Utilities;

namespace SimpleCMS
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var user = Session["user"];
            if (user != null)
            {
                Response.Redirect("~/Default.aspx");
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            if (!IsPostBack || !Page.IsValid) return;

            //make sure passwords match
            if (!Password.Text.Equals(ConfirmPassword.Text))
            {
                ApiResponse.InnerText = "Passwords must match";
                return;
            }

            try
            {
                //Create the user
                var userId = Services.Service.Register(
                    FirstName.Text,
                    LastName.Text,
                    Email.Text,
                    Password.Text,
                    Username.Text,
                    SimpleCMS.Site.Roles.Contributor
                );
    
                //Fetch the user with the id returned after creation
                var user = Database.User.Read(userId);

                // Save our user to the current session
                Session["user"] = user;
                
                //Also create a cookie
                var cookie = SimpleCMS.Site.CreateCookie(user.Id);
                Response.Cookies.Add(cookie);
                
                //Return user back to the home screen
                Response.Redirect("~/Default.aspx");
            }
            catch (Exception err)
            {
                //Display error  from exception
                ApiResponse.InnerText = err.Message;
            }
        }
    }
}