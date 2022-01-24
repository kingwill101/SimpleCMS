<%@ Page Title="Title" Language="C#" MasterPageFile="Layout.master" CodeBehind="Default.aspx.cs" Inherits="SimpleCMS.Views.Dashboard.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <div class="wrap">
        <div class="scoreboard">
            <asp:Panel CssClass="well" runat="server">
                        <label>Post Added</label>
                        <h3>5</h3>
                    </asp:Panel>  
                    
                    <asp:Panel CssClass="well" runat="server">
                        <label>Users</label>
                        <h3>5</h3>
                    </asp:Panel>
                    
                    <asp:Panel CssClass="well" runat="server">
                        <label>Logged In</label>
                        <h3>5</h3>
                    </asp:Panel>
        </div>
        
        
    </div>
</asp:Content>