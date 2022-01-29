<%@ Page Title="Title" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Category.aspx.cs" Inherits="SimpleCMS.CategoryView" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="header" style="display: flex;flex-direction: column;align-items: center; padding: 20px">
            <asp:Label runat="server" ID="CategoryTitle" Font-Size="40px" Font-Bold="True"/>
            <asp:Label runat="server" ID="CategoryDescription"/> <br/><br/>
        </div>
    </div>
    <div class="row">
        <% foreach (var myItem in Posts)
           { %>

            <div class="col-md-4">
                <h2><%= myItem.Title %></h2>
                <% var image = SimpleCMS.Site.Image(myItem.Content); %>
                <% if (image.Length != 0)
                   { %>
                    <img src="<%= image %>" width="100%" height="200" alt="Image">
                <% } %>
                <p>
                    <%= SimpleCMS.Site.Excerpt(myItem.Content) %>
                </p>

                <div class="label label-default "><%= SimpleCMS.Services.Service.Author(myItem.UserId).ToString() %></div>
                <p>
                    <a class="btn btn-default pull-right" href="/Post?post_id=<%= myItem.Id %>">Read more &raquo;</a>
                </p>
            </div>

        <% } %>
    </div>
</asp:Content>