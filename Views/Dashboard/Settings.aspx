<%@ Page ValidateRequest="false" Title="Title" Language="C#" MasterPageFile="Layout.master" CodeBehind="Settings.aspx.cs" Inherits="SimpleCMS.Views.Dashboard.Settings_aspx" %>
<%@ Register TagPrefix="Editor" TagName="post" Src="~/Views/PostEdit.ascx" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <div class="wrap">
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
                    <div class="description">
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
                    <asp:Label runat="server" Text="Copyright"/>
                </th>
                <td>
                    <asp:TextBox
                        CssClass="regular-text" ID="copyrightTextBox" runat="server"/>
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