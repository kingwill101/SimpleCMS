using System;
using System.Web.UI;

namespace SimpleCMS.Views.Dashboard
{
    public partial class Settings_aspx : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            siteTitleTextBox.Text = Service.GetSetting(SimpleCMS.Site.SiteTitleKey);
            adminEmailBox.Text = Service.GetSetting(SimpleCMS.Site.SiteAdminEmailKey);
            copyrightTextBox.Text = Service.GetSetting(SimpleCMS.Site.SiteCopyrightKey);
            siteDescriptionTextBox.Text = Service.GetSetting(SimpleCMS.Site.SiteDescriptionKey);
        }

        protected void updateSettingsBtn_OnClick(object sender, EventArgs e)
        {
            Service.updateSetting(SimpleCMS.Site.SiteTitleKey, siteTitleTextBox.Text);
            Service.updateSetting(SimpleCMS.Site.SiteAdminEmailKey, adminEmailBox.Text);
            Service.updateSetting(SimpleCMS.Site.SiteCopyrightKey, copyrightTextBox.Text);
            Service.updateSetting(SimpleCMS.Site.SiteDescriptionKey, siteDescriptionTextBox.Text);
        }
    }
}