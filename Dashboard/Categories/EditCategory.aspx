<%@ Page Title="Title" Language="C#" MasterPageFile="../Layout.master" CodeBehind="EditCategory.aspx.cs" Inherits="SimpleCMS.Dashboard.Categories.EditCategory" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <div class="wrap">
        <h3>Add New Category</h3>
        <div class="description">
            Create a brand new user and add them to this site.
        </div>
        <table class="form-table">
            <tr>
                <th scope="row">
                    <asp:Label runat="server" Text="Name"/>
                </th>
                <td>

                    <asp:TextBox
                        CssClass="regular-text"
                        ID="Name"
                        placeholder="My Site"
                        runat="server"/>
                    <p>The name is how it appears on your site.</p>
                </td>
            </tr>

            <tr>
            <th scope="row">

                <asp:Label runat="server" Text="Description"/>
            </th>
            <td>

                <asp:TextBox
                    TextMode="MultiLine"
                    Rows="5"
                    CssClass="regular-text"
                    ID="Description"
                    runat="server"/>
                <p>The description is not prominent by default; however,  </p>
                <p>some themes may show it.</p>
            </td>
        </table>
        <div class="button-row">
            <asp:Button
                CssClass="button"
                Text="Save"
                ID="CreateUseBtn"

                OnClick="CreateUseBtn_OnClick" runat="server"/>
        </div>
        
        <asp:HiddenField ID="CategoryID" runat="server"/>
    </div>
</asp:Content>