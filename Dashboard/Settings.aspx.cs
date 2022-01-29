using System;
using System.Web.UI;

namespace SimpleCMS.Dashboard
{
    public partial class SettingsAspx : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            siteTitleTextBox.Text = SettingsHelper.GetSetting(SimpleCMS.Site.SiteTitleKey);
            adminEmailBox.Text = SettingsHelper.GetSetting(SimpleCMS.Site.SiteAdminEmailKey);
            copyrightTextBox.Text = SettingsHelper.GetSetting(SimpleCMS.Site.SiteCopyrightKey);
            siteDescriptionTextBox.Text = SettingsHelper.GetSetting(SimpleCMS.Site.SiteDescriptionKey);
            MenuHEading.Text = SettingsHelper.GetSetting(SimpleCMS.Site.SiteMenuHeadingKey);
            MenuType.Text = SettingsHelper.GetSetting(SimpleCMS.Site.SiteMenuOrientationKey);
        }

        protected void updateSettingsBtn_OnClick(object sender, EventArgs e)
        {
            SettingsHelper.UpdateSetting(SimpleCMS.Site.SiteTitleKey, siteTitleTextBox.Text);
            SettingsHelper.UpdateSetting(SimpleCMS.Site.SiteAdminEmailKey, adminEmailBox.Text);
            SettingsHelper.UpdateSetting(SimpleCMS.Site.SiteCopyrightKey, copyrightTextBox.Text);
            SettingsHelper.UpdateSetting(SimpleCMS.Site.SiteDescriptionKey, siteDescriptionTextBox.Text);
            SettingsHelper.UpdateSetting(SimpleCMS.Site.SiteMenuHeadingKey, MenuHEading.Text);
            SettingsHelper.UpdateSetting(SimpleCMS.Site.SiteMenuOrientationKey, MenuType.Text);
        }
    }
}