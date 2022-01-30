<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="SimpleCMS.About" %>
<%@ Import Namespace="SimpleCMS.Services" %>
<%@ Import Namespace="SimpleCMS" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>About Us</h2>
    <h3><%: SettingsHelper.GetSetting(SimpleCMS.Site.SiteDescriptionKey) %> </h3>
    <p>
        <%: Service.SiteTitle() %> brings together the reach of global and the depth of local,
        delivering 24/7 news coverage and analysis on the trends, technologies,<br/>
        and opportunities that matter to IT professionals and decision makers. Whatever your role in the IT
        buying cycle, <%: Service.SiteTitle() %> provides support -- from investigating options to optimizing a
        solution.
    </p>
    <p>
        Whether you want to follow hot topics or emerging trends, or keep up to date
        with the latest news and events, <%: Service.SiteTitle() %> is
        the destination for professionals seeking to research
        technology-related issues, and solve business technology problems.
    </p>


</asp:Content>