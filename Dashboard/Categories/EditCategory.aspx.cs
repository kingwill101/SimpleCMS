using System;
using System.Web.UI;

namespace SimpleCMS.Dashboard.Categories
{
    public partial class EditCategory : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            try
            {
                var catId = Convert.ToInt32(Request.QueryString["category_id"]);
                var cat = SimpleCMS.Database.Category.Read(catId);

                Name.Text = cat.Name;
                Description.Text = cat.Description;
                CategoryID.Value = cat.Id.ToString();
            }
            catch (Exception)
            {
            }
        }

        protected void CreateUseBtn_OnClick(object sender, EventArgs e)
        {
            var result = Database.Category.Update(Convert.ToInt32(CategoryID.Value), Name.Text,
                Description.Text
            );
            if (result)
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}