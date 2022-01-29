using System;
using System.Buffers.Text;
using System.Text;
using System.Web;
using System.Web.UI;
using Microsoft.Ajax.Utilities;
using SimpleCMS.Exceptions;

namespace SimpleCMS
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Redirect("Dashboard/Default.aspx");
            }
            else
            {
                var user = SimpleCMS.Site.UserFromCookie(Request);

                if (user == null) return;
                Session["user"] = user;
                Response.Redirect("Dashboard/Default.aspx");
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            if (!IsPostBack || !Page.IsValid) return;
            var service = new Services.Service();

            try
            {
                
                var user = service.Login(Email.Text, Password.Text);
                Session["user"] = user;

                Response.Cookies.Add(SimpleCMS.Site.CreateCookie(user.Id));
            }
            catch (UserNotFoundException)
            {
                ApiResponse.InnerText = "Username/Password provided is incorrect";
            }
            catch (Exception ex)
            {
                ApiResponse.InnerText = ex.Message;
            }
        }
    }
}