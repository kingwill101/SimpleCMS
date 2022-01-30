<%@ Page ValidateRequest="false" Title="Title" Language="C#" MasterPageFile="Layout.master" CodeBehind="Settings.aspx.cs" Inherits="SimpleCMS.Dashboard.SettingsAspx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <div class="wrap">
        <h3>Settings</h3>
        <table class="form-table">
            <tr>
                <th scope="row">
                    <asp:Label runat="server" Text="Site Title"/>
                </th>
                <td>
                    <asp:TextBox
                        CssClass="regular-text"
                        ID="siteTitleTextBox"
                        placeholder="My Site"
                        runat="server"/>
                </td>
            </tr>
            <tr>
                <th scope="row">
                    <asp:Label runat="server" Text="Tagline"/>
                </th>
                <td>
                    <asp:TextBox
                        CssClass="regular-text" ID="siteDescriptionTextBox" runat="server"/>
                    <div class="label-description">
                        In a few words, explain what this site is about.
                    </div>
                </td>
            </tr>

            <tr>
                <th scope="row">
                    <asp:Label runat="server" Text="Admin email"/>
                </th>
                <td>
                    <asp:TextBox
                        CssClass="regular-text" ID="adminEmailBox" runat="server"/>
                </td>
            </tr>
            <tr>
                <th scope="row">
                    <asp:Label runat="server" Text="Phone Number"/>
                </th>
                <td>
                    <asp:TextBox
                        CssClass="regular-text" ID="phoneNumberBox" runat="server"/>
                </td>
            </tr>

            <tr>
                <th scope="row">
                    <asp:Label runat="server" Text="Copyright"/>
                </th>
                <td>
                    <asp:TextBox
                        CssClass="regular-text" ID="copyrightTextBox" runat="server"/>
                </td>
            </tr>
            <tr>
                <th scope="row">
                    <asp:Label runat="server" Text="Menu Type"/>
                </th>
                <td>
                    <asp:DropDownList
                        CssClass="regular-text" ID="MenuType" runat="server">
                        <asp:ListItem Text="Show on navigation bar" Value="main"/>
                        <asp:ListItem Text="Show in submenu" Value="sub"/>
                    </asp:DropDownList>
                    <div class="label-description"> Show menu as a dropdown or individual headings</div>
                </td>
            </tr>

            <tr>
                <th scope="row">
                    <asp:Label runat="server" Text="Menu Heading"/>
                </th>
                <td>
                    <asp:TextBox
                        CssClass="regular-text" Text="Categories" ID="MenuHEading" runat="server"/>
                    <div class="label-description"> Heading to use for menus</div>
                </td>
            </tr>
        </table>
        <div class="button-row">
            <asp:Button
                CssClass="button"
                Text="Save"
                ID="updateSettingsBtn"
                OnClick="updateSettingsBtn_OnClick" runat="server"/>
        </div>
    </div>
</asp:Content>