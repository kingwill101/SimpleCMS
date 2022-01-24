<%@ Page ValidateRequest="false" Title="Title" Language="C#" MasterPageFile="../Layout.master" CodeBehind="EditPost.aspx.cs" Inherits="SimpleCMS.Views.Dashboard.Posts.EditPost" %>
<%@ Register TagPrefix="Editor" TagName="post" Src="~/Views/PostEdit.ascx" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <Editor:post runat="server"
                 ID="Editor"
                 State="Update"/>
</asp:Content>