<%@ Page Title="Title" Language="C#" MasterPageFile="../Layout.master" CodeBehind="Default.aspx.cs" Inherits="SimpleCMS.Views.Dashboard.Posts.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <asp:GridView CssClass="form-table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>

            <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title"/>
            <asp:BoundField DataField="created_at" HeaderText="Date" SortExpression="created_at"/>
            
            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                    <div>
                        <asp:LinkButton runat="server" Text="Edit" PostBackUrl='<%# "/Views/Dashboard/Posts/EditPost?post_id=" + Eval("id") %>'/>
                        <asp:LinkButton runat="server" Text="Delete" PostBackUrl='<%# "/Views/Dashboard/Posts/EditPost?post_id=" + Eval("id") %>'/>
                        <asp:LinkButton runat="server" Text="View" PostBackUrl='<%# "/Views/Dashboard/Posts/EditPost?post_id=" + Eval("id") %>'/>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MBCCSchoolConnectionString %>" SelectCommand="SELECT * FROM [cms_posts]"></asp:SqlDataSource>
    <p>
    </p>

</asp:Content>