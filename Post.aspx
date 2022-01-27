<%@ Page Title="Title" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Post.aspx.cs" Inherits="SimpleCMS.PostView" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="article">
        <b><string><h1 ID="ArticleTitle" runat="server"></h1></string></b>
        <div>Written  by <div runat="server" ID="Author" class="label label-default "></div>, <span runat="server" ID="Role"></span> </div>
        <div>Posted in <span ID="Category" runat="server"> </span> on <span runat="server" ID="Date"></span></div>
        <div ID="ArticleBody" runat="server"></div>
    </div>
</asp:Content>