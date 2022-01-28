<%@ Page Title="Title" Language="C#" MasterPageFile="Layout.master" CodeBehind="Default.aspx.cs" Inherits="SimpleCMS.Dashboard.Default" %>
<%@ Import Namespace="SimpleCMS.Services" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <div class="wrap">
        <div class="recent-posts">


            <div class="panel panel-success">
                <div class="panel-heading">Recent Comments</div>
                <div class="panel-body">
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <p>
                                <strong>
                                    <a href="/Post.aspx?post_id=<%# Eval("post_id") %>"> <%# Service.Post(Convert.ToInt32(Eval("post_id"))).Title %></a>
                                </strong>
                            </p>

                            <p>
                                <asp:Label ID="content_Label" runat="server" Text='<%# Eval("content") %>'/>
                            </p>

                            <strong>
                                <asp:Label ID="user_nameLabel" runat="server" Text='<%# Eval("user_name") %>'/>
                            </strong>

                            <asp:Label ID="created_atLabel" runat="server" Text='<%# Eval("created_at") %>'/>
                            <br/>
                            <br/>
                        </ItemTemplate>
                    </asp:DataList>


                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MBCCSchoolConnectionString %>" SelectCommand="list_comment_summary" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="5" Name="Limit" Type="Int32"/>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">Recent Posts</div>
                <div class="panel-body">
                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
                        <ItemTemplate>
                            <p>
                                <strong>
                                    <a href="/Post.aspx?post_id=<%# Eval("id") %>"> <%# Eval("title") %></a>
                                </strong>
                            </p>
                            <asp:Label ID="created_atLabel" runat="server" Text='<%# Eval("created_at") %>'/>
                            <br/>
                            <br/>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource 
                        ID="SqlDataSource2" 
                        runat="server" 
                                       ConnectionString="<%$ ConnectionStrings:MBCCSchoolConnectionString %>" SelectCommand="list_x_posts" 
                                       SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="5" Name="Limit" Type="Int32"/>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading">Statistics</div>

                <div class="panel-body">
                    <li class="list-group-item">Categories Created <span class="badge"><%= Service.Categories().Count.ToString() %></span></li>
                    <li class="list-group-item">Posts added <span class="badge danger"><%= Service.Posts().Count.ToString() %></span></li>
                    <li class="list-group-item">Users <span class="badge"><%= Service.Users().Count.ToString() %></span></li>
                    <li class="list-group-item">Online <span class="badge"><%= Service.Posts(2).Count.ToString() %></span></li>
                </div>
            </div>
        </div>


    </div>
</asp:Content>