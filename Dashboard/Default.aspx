<%@ Page Title="Title" Language="C#" MasterPageFile="Layout.master" CodeBehind="Default.aspx.cs" Inherits="SimpleCMS.Dashboard.Default" %>
<%@ Import Namespace="SimpleCMS.Models" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <div class="wrap">
        <div class="recent-posts">


            <div class="panel panel-success">
                <div class="panel-heading">Recent Posts</div>
                <div class="list-group">

                    <% foreach (var myItem in SimpleCMS.Services.Service.Posts(3))
                       { %>
                        <div class="list-group-item list-group-item-info">

                            <div class="list-group-item-heading">
                                <h4>
                                    <a href="/Post?post_id=<%= myItem.Id.ToString() %>">
                                        <%= myItem.Title %>
                                    </a>
                                </h4>
                            </div>

                            <div class="list-group-item-text"></div>
                            <span class="badge ">Author: <%= myItem.Author.FirstName %> </span>

                            <p>
                                <% foreach (var cat in SimpleCMS.Database.Category.PostCategories(myItem.Id))
                                   { %>
                                    <span class="label  ">
                                        <a class="btn btn-default btn-sm" href="/Category.aspx?category_id=<%= cat.Id %>"> <%= cat.Name %> </a>
                                    </span>
                                <% } %>
                            </p>
                        </div>

                    <% } %>
                </div>
            </div>

        </div>

        <div class="recent-posts">
            <ul class="list-group">
                <li class="list-group-item">
                    <h4>Stats</h4>
                </li>

                <li class="list-group-item">Categories Created <span class="badge"><%= SimpleCMS.Services.Service.Categories().Count.ToString() %></span></li>
                <li class="list-group-item">Posts added <span class="badge danger"><%= SimpleCMS.Services.Service.Posts().Count.ToString() %></span></li>
                <li class="list-group-item">Users <span class="badge"><%= SimpleCMS.Services.Service.Users().Count.ToString() %></span></li>
                <li class="list-group-item">Online <span class="badge"><%= SimpleCMS.Services.Service.Posts(2).Count.ToString() %></span></li>

            </ul>
        </div>


    </div>
</asp:Content>