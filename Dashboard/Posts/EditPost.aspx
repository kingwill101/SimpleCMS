<%@ Page ValidateRequest="false" Title="Title" Language="C#" MasterPageFile="../Layout.master" CodeBehind="EditPost.aspx.cs" Inherits="SimpleCMS.Dashboard.Posts.EditPost" %>
<%@ Register TagPrefix="Editor" TagName="post" Src="PostEdit.ascx" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


    <div class="wrap">
        <h3>Edit Post</h3>
        <div class="editor-wrap">
            <div class="content-editor">
                <Editor:post
                    ID="Editor" runat="server"
                    State="Update"/>
            </div>

            <div class="content-options">
                <div class="panel">
                    <div class="panel-heading">Categories</div>
                    <div class="panel-body">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MBCCSchoolConnectionString %>" SelectCommand="EXEC dbo.list_categories"></asp:SqlDataSource>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id"></asp:CheckBoxList>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>