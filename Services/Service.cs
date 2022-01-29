using System;
using System.Collections.Generic;
using System.Web.Script.Services;
using System.Web.Services;
using SimpleCMS.Models;
using SimpleCMS.Models.JamCovid;

namespace SimpleCMS.Services
{
    [ScriptService]
    public class Service : WebService
    {
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public static List<Post> Posts(int count = -1)
        {
            List<Post> posts;
            if (count == -1)
            {
                posts = Database.Post.List();
            }
            else
            {
                posts = Database.Post.ListXPost(count);
            }

            posts.ForEach(post => { post.Author = Database.User.Read(post.UserId); });

            return posts;
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public static int UserPostCount(int id = -1)
        {
            var count = 0;
            try
            {
                count = Database.Post.CountForUser(id);
            }
            catch (Exception)
            {
            }


            return count;
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public static int CategoryPostCount(int id = -1)
        {
            var count = 0;
            try
            {
                count = Database.Post.CountForCategory(id);
            }
            catch (Exception)
            {
            }

            return count;
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public static List<User> Users()
        {
            var users = Database.User.List();

            return users;
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public string Title()
        {
            return SettingsHelper.GetSetting(SimpleCMS.Site.SiteTitleKey);
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public static User Author(int id)
        {
            return Database.User.Read(id);
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public static Post Post(int id)
        {
            return Database.Post.Read(id);
        }

        [WebMethod]
        public static string SiteTitle()
        {
            return SettingsHelper.GetSetting(SimpleCMS.Site.SiteTitleKey);
        }

        [WebMethod]
        public static string SiteCopyright()
        {
            return SettingsHelper.GetSetting(SimpleCMS.Site.SiteCopyrightKey);
        }

        [WebMethod]
        public User Login(string emailText, string passwordText)
        {
            return Database.User.Login(emailText, passwordText);
        }

        [WebMethod]
        public static List<Category> Categories()
        {
            return Database.Category.List();
        }

        [WebMethod]
        public static int Register(
            string firstNameText,
            string lastNameText, 
            string emailText,
            string passwordText,
            string usernameText,
            int contributor = SimpleCMS.Site.Roles.Contributor
        )
        {
            return Database.User.Create(firstNameText, lastNameText, emailText, passwordText, usernameText,
                contributor);
        }
    }
}