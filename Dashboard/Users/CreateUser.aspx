<%@ Page Title="Title" Language="C#" MasterPageFile="../Layout.master" CodeBehind="CreateUser.aspx.cs" Inherits="SimpleCMS.Dashboard.Users.CreateUser" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <div class="wrap">
        <h3>Add New User</h3>
        <div class="description">
            Create a brand new user and add them to this site.
        </div>
        <table class="form-table">
            <tr>
                <th scope="row">
                    <asp:Label runat="server" Text="Username (required)"/>
                </th>
                <td>
                    <asp:TextBox
                        CssClass="regular-text"
                        ID="Username"
                        placeholder="My Site"
                        runat="server"/>
                </td>
            </tr>

            <tr>
                <th scope="row">
                    <asp:Label runat="server" Text="Email (required)"/>
                </th>
                <td>
                    <asp:TextBox
                        CssClass="regular-text"
                        ID="Email"
                        runat="server"/>
                </td>
            </tr>
            <tr>
                <th scope="row">
                    <asp:Label runat="server" Text="First Name"/>
                </th>
                <td>
                    <asp:TextBox
                        CssClass="regular-text"
                        ID="FirstName"
                        runat="server"/>
                </td>
            </tr>

            <tr>
                <th scope="row">
                    <asp:Label runat="server" Text="Last Name"/>
                </th>
                <td>
                    <asp:TextBox
                        CssClass="regular-text"
                        ID="LastName"
                        runat="server"/>
                </td>
            </tr>
            <tr>
                <th scope="row">
                    <asp:Label runat="server" Text="Password"/>
                </th>
                <td>
                    <asp:TextBox
                        CssClass="regular-text"
                        ID="Password"
                        runat="server"/>
                </td>
            </tr>

            <tr>
                <th scope="row">
                    <asp:Label runat="server" Text="Role"/>
                </th>
                <td>
                    <asp:DropDownList
                        CssClass="regular-text"
                        ID="Role"
                        runat="server">
                        <asp:ListItem Text="Administrator" Value="1"/>
                        <asp:ListItem Text="Author" Value="2"/>
                        <asp:ListItem Text="Editor" Value="3"/>
                        <asp:ListItem Text="Contributor" Value="4"/>
                    </asp:DropDownList>
                </td>
            </tr>

        </table>
        <div class="button-row">
            <asp:Button
                CssClass="button"
                Text="Save"
                ID="CreateUseBtn"
                OnClick="CreateUseBtn_OnClick" runat="server"/>
        </div>
    </div>
</asp:Content>