using System;
using System.Web.UI;

namespace SimpleCMS.Dashboard
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
            Service.UpdateSetting(SimpleCMS.Site.SiteTitleKey, siteTitleTextBox.Text);
            Service.UpdateSetting(SimpleCMS.Site.SiteAdminEmailKey, adminEmailBox.Text);
            Service.UpdateSetting(SimpleCMS.Site.SiteCopyrightKey, copyrightTextBox.Text);
            Service.UpdateSetting(SimpleCMS.Site.SiteDescriptionKey, siteDescriptionTextBox.Text);
        }
    }
}