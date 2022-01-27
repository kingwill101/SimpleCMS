using System.Collections.Generic;
using System.Net;
using System.Web.Script.Services;
using System.Web.Services;
using Newtonsoft.Json;
using SimpleCMS.Models;

namespace SimpleCMS.Services
{
    [ScriptService]
    public class HomeService : System.Web.Services.WebService
    {
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public string SiteTitle()
        {
            return SimpleCMS.Service.GetSetting(SimpleCMS.Site.SiteTitleKey);
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public string SiteCopyright()
        {
            return SimpleCMS.Service.GetSetting(SimpleCMS.Site.SiteCopyrightKey);
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public List<Post> Posts(int count = -1)
        {
            List<Models.Post> posts;
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
        public SimpleCMS.Models.JamCovid.Root Covid()
        {
            using (var wb = new WebClient())
            {
                var response = wb.DownloadString("https://admin.jamcovid19.moh.gov.jm/public/api/statistics");
                var myDeserializedClass =
                    JsonConvert.DeserializeObject<SimpleCMS.Models.JamCovid.Root>(response);

                return myDeserializedClass;
            }
        }
    }
}