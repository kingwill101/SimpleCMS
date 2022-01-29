<%@ Page Title="Title" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Post.aspx.cs" Inherits="SimpleCMS.PostView" %>
<%@ Register TagPrefix="Category" TagName="box" Src="CommentSectionControl.ascx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="article">
        <b>
            <string>
                <h1 ID="ArticleTitle" runat="server"></h1>
            </string>
        </b>
        <div>
            Written by
            <div runat="server" ID="Author" class="label label-default "></div>, <span runat="server" ID="Role"></span>,
        </div>
        <div>Posted in <span ID="Category" runat="server"> </span> on <span runat="server" ID="Date"></span></div>
        <br/> <br/>
        <div ID="ArticleBody" runat="server"></div>

        <br>


        <div class="detailBox">
            <div class="titleBox">
                <label>Comment Box</label>
                <button type="button" class="close" aria-hidden="true">&times;</button>
            </div>
            <div class="commentBox">
                <p class="taskDescription" ID="CommentBoxDescription" runat="server"></p>
            </div>
            <div class="actionBox">
                <ul class="commentList">
                    <% foreach (var comment in GetComments())
                       { %>
                        <li>
                            <div class="commenterImage">
                                <img src="https://picsum.photos/200" alt="cats"/>
                            </div>
                            <div class="commentText">
                                <p ><%= comment.Content %></p> <span class="date sub-text">on <%= comment.Created.ToShortDateString() %></span>

                            </div>
                        </li>
                    <% } %>
                </ul>

                <Category:box runat="server" ID="CommentCreate"/>

            </div>
        </div>


    </div>
</asp:Content>