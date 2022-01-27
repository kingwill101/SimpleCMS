<%@ Page Title="User" Language="C#" MasterPageFile="../Layout.master" CodeBehind="Default.aspx.cs" Inherits="SimpleCMS.Dashboard.Users.Default" %>
<%@ Import Namespace="SimpleCMS.Services" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="wrap">
        <h3 class="title">Users</h3>
        <div class="content">
            <asp:GridView OnRowDataBound="GridView1_OnRowDataBound" CssClass="form-table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:TemplateField HeaderText="Username">
                        <ItemTemplate>
                            <div><%# Eval("username").ToString() %></div>
                            <div>
                                <asp:LinkButton runat="server" Text="View" PostBackUrl='<%# "/User?user_id=" + Eval("id") %>'/>
                                <asp:LinkButton runat="server" Text="Edit" PostBackUrl='<%# "/Dashboard/Users/EditUser?user_id=" + Eval("id") %>'/>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <div><%# Eval("first_name").ToString() + ' ' + Eval("last_name") %>'</div>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email"/>
                    <asp:TemplateField HeaderText="Role">
                        <ItemTemplate>
                            <%# SimpleCMS.Site.RoleToString(Convert.ToInt32(Eval("role").ToString())) %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Posts">
                        <ItemTemplate>
                            <%# Service.UserPostCount(Convert.ToInt32(Eval("id").ToString())) %>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
            <asp:SqlDataSource
                ID="SqlDataSource1"
                runat="server"
                ConnectionString="<%$ ConnectionStrings:MBCCSchoolConnectionString %>"
                SelectCommand="EXEC dbo.list_users"/>

        </div>

        <div class="button-row">
            <asp:Button
                CssClass="button"
                ID="Button1"
                Text="Add New"
                OnClick="Button1_OnClick"
                runat="server"/>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            
        $('#<%= GridView1.ClientID %>').DataTable();

           });
    </script>
</asp:Content>