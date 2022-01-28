<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CommentSectionControl.ascx.cs" Inherits="SimpleCMS.CommentSectionControl" %>

<div class="form-inline" role="form">
    <div class="form-group">
        <asp:TextBox ID="CommentBox" CssClass="form-control" runat="server" placeholder="Your comments"/>
    </div>
    <div class="form-group">
        <asp:Button ID="Button1" OnClick="Button1_OnClick" runat="server" CssClass="btn btn-default"   Text="Add"/>
    </div>
</div>

        <asp:RequiredFieldValidator runat="server" ControlToValidate="CommentBox" ErrorMessage="Comment cannot be empty"/>
