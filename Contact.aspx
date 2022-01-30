<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SimpleCMS.Contact" %>
<%@ Import Namespace="SimpleCMS.Services" %>
<%@ Import Namespace="SimpleCMS" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <address>
        <%: Service.SiteTitle() %><br/>
        Montego Bay, Jamaica W.I<br/>
        <abbr title="Phone">P: <%: SettingsHelper.GetSetting(SimpleCMS.Site.SitePhoneKey) %></abbr>

    </address>

    <address>
        <strong>Support:</strong> <a href="mailto:Support@example.com"><%: SettingsHelper.GetSetting(SimpleCMS.Site.SiteAdminEmailKey) %></a><br/>
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com"><%: SettingsHelper.GetSetting(SimpleCMS.Site.SiteAdminEmailKey) %></a>
    </address>
</asp:Content>