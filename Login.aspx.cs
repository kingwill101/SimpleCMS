﻿using System;
using System.Web.UI;
using Microsoft.Ajax.Utilities;

namespace SimpleCMS
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var userId = Session["user"];
            if (userId != null)
            {
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
                Session["role"] = user.Role;
                Session["user"] = user.Id;

                var refer = Request.QueryString["refer"];
                Response.Redirect(refer.IsNullOrWhiteSpace() ? "Dashboard/Default.aspx" : refer);
            }
            catch (Exception err)
            {
                ApiResponse.InnerText = err.Message;
            }
        }
    }
}