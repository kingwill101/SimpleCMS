<%@ Page ValidateRequest="false" Title="Title" Language="C#" MasterPageFile="../Layout.master" CodeBehind="CreatePost.aspx.cs" Inherits="SimpleCMS.Views.Dashboard.Posts.CreatePost" %>
<%@ Register TagPrefix="Editor" TagName="post" Src="~/Views/PostEdit.ascx" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <div class="editor-wrap">
        <div class="content-editor">
            <Editor:post
                ID="Edit" runat="server"
                State="Save"/>
        </div>

        <div class="content-options">

        </div>
    </div>
</asp:Content>