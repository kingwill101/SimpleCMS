<%@ Page ValidateRequest="false" Title="Title" Language="C#" MasterPageFile="../Layout.master" CodeBehind="CreatePost.aspx.cs" Inherits="SimpleCMS.Dashboard.Posts.CreatePost" %>
<%@ Register TagPrefix="Editor" TagName="post" Src="PostEdit.ascx" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <div class="editor-wrap">
        <div class="content-editor">
            <Editor:post
                ID="Edit" runat="server"
                State="Save"/>

        </div>

        <div class="content-options">
            <div class="panel">
                <div class="panel-heading">Categories</div>
                <div class="panel-body">
                    <asp:SqlDataSource
                        ID="SqlDataSource1" runat="server"
                        ConnectionString="<%$ ConnectionStrings:MBCCSchoolConnectionString %>"
                        SelectCommand="EXEC dbo.list_categories"/>

                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id"/>
                </div>

                <div class="panel-footer">
                    <asp:Label runat="server" ID="postCreateMessage"/>

                </div>
            </div>
        </div>
    </div>
</asp:Content>