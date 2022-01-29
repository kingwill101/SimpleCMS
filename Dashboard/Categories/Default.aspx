<%@ Page Title="Title" Language="C#" MasterPageFile="../Layout.master" CodeBehind="Default.aspx.cs" Inherits="SimpleCMS.Dashboard.Categories.Default" %>
<%@ Import Namespace="SimpleCMS.Services" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="wrap">
        <h3 class="title">Categories</h3>
        <div class="content">

            <asp:GridView OnRowDataBound="GridView1_OnRowDataBoundtaBound" CssClass="form-table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>

                    <asp:TemplateField HeaderText="Name" SortExpression="id">
                        <ItemTemplate>
                            <asp:LinkButton Text='<%# Eval("name") %>' runat="server" PostBackUrl='<%# "EditCategory.aspx?category_id=" + Eval("id").ToString() %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description"/>


                    <asp:TemplateField HeaderText="Count">
                        <ItemTemplate>
                            <%# Service.CategoryPostCount(Convert.ToInt32(Eval("id").ToString())) %>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="In Menu" SortExpression="show_menu">
                        <ItemTemplate>
                            <asp:CheckBox Enabled="False" Checked='<%# Eval("show_menu").ToString() == "True" %>' runat="server" PostBackUrl='<%# "EditCategory.aspx?category_id=" + Eval("id").ToString() %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
            <asp:SqlDataSource
                ID="SqlDataSource1"
                runat="server"
                ConnectionString="<%$ ConnectionStrings:MBCCSchoolConnectionString %>"
                SelectCommand="EXEC dbo.list_categories"/>
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