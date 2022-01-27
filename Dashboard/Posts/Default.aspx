<%@ Page Title="Title" AutoEventWireup="true" Language="C#" MasterPageFile="../Layout.master" CodeBehind="Default.aspx.cs" Inherits="SimpleCMS.Dashboard.Posts.Default" %>
<%@ Import Namespace="SimpleCMS.Services" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="wrap">
        <h3 class="title">Posts</h3>
        <div class="content">
            <asp:GridView OnRowDataBound="GridView1_OnRowDataBound" CssClass="form-table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>

                    <asp:TemplateField HeaderText="Title">
                        <ItemTemplate>
                            <div>
                                <stong>
                                    <%# Eval("title").ToString() %>
                                </stong>

                            </div>


                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status"/>
                    <asp:BoundField DataField="created_at" HeaderText="Date" SortExpression="created_at"/>

                    <asp:TemplateField HeaderText="Author">
                        <ItemTemplate>
                            <%# Service.Author(Convert.ToInt32(Eval("user_id").ToString())).ToString() %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>

                            <div>
                                <strong>
                                    <asp:LinkButton runat="server" Text="Edit" PostBackUrl='<%# "/Dashboard/Posts/EditPost?post_id=" + Eval("id") %>'/>

                                </strong> <%-- <asp:LinkButton runat="server" Text="Delete" PostBackUrl='<%# "/Dashboard/Posts/EditPost?post_id=" + Eval("id") %>'/> --%>
                                <strong>
                                    <asp:LinkButton runat="server" Text="View" PostBackUrl='<%# "/Post?post_id=" + Eval("id") %>'/>
                                </strong>
                            </div>

                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MBCCSchoolConnectionString %>" SelectCommand="EXEC dbo.list_posts"></asp:SqlDataSource>

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