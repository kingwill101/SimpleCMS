using System;
using System.Web.UI;

namespace SimpleCMS.Dashboard.Categories
{
    public partial class CreateCategory : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void CreateUseBtn_OnClick(object sender, EventArgs e)
        {
            var result = Database.Category.Create(Name.Text,
                Description.Text, ShowInMenuCheckBox.Checked);
            
            if (result)
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}