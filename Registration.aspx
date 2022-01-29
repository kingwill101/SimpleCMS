<%@ Page Language="C#" CodeBehind="Register.aspx.cs" Inherits="SimpleCMS.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Registration | <%= SimpleCMS.Services.Service.SiteTitle() %></title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css"/>
    <style type="text/css"> 
    
    body{
        margin:0;
        padding: 0;
        width: 100vw;
        height: 100vh;
    }
    .login-wrap{
        width: 300px;
        margin: 0 auto;
        display: flex;
         justify-content: center;
                    align-content: center;
                    align-items: center;
    }
        .login-box{
            flex: 1;
            flex-direction: column;
            justify-content: center;
            align-content: center;
            align-items: center;
            row-gap: 10px;
        }
               
        .login{
        display: flex;
        flex-direction: column;
        row-gap: 1px;
        flex-grow: 1;
        width: 100%;
        }
        
        .login > *{
        width: 100%;
        }
        
        .login > h3{
        display: flex;
        justify-content: center;
        font-size: 40px;
        }
        .login > input{
        max-width: 1000px;
        height: 30px;
        }
        
        .validation {
            color: rgba(201,115,115,0.92);
            padding: 3px;
        }
    </style>


    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon"/>

</head>
<body>

<div class="navbar navbar-default">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" runat="server" href="~/"> <%= SimpleCMS.Services.Service.SiteTitle() %></a>
    </div>
</div>
<form runat="server">
    <asp:ScriptManager runat="server">
        <Scripts>
            <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
            <%--Framework Scripts--%>
            <asp:ScriptReference Name="MsAjaxBundle"/>
            <asp:ScriptReference Name="jquery"/>
            <asp:ScriptReference Name="bootstrap"/>
            <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js"/>
            <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js"/>
            <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js"/>
            <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js"/>
            <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js"/>
            <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js"/>
            <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js"/>
            <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js"/>
            <asp:ScriptReference Name="WebFormsBundle"/>
            <%--Site Scripts--%>
        </Scripts>

        <Services>
            <asp:ServiceReference
                path="~/services/SettingsHelpers.asmx"/>
        </Services>
    </asp:ScriptManager>

    <div class="login-wrap">
        <asp:Panel CssClass="login-box" ID="Panel1" runat="server">

            <div class="col-md-4 login">
                <h3>Registration</h3> <br/>
                <label runat="server" ID="ApiResponse"></label>

                <div class="form-group">
                    <label runat="server" for="<%# Username.ClientID %>">Username</label>
                    <asp:TextBox CssClass="form-control" placeholder="Username" ID="Username" runat="server"/>
                    <asp:RequiredFieldValidator CssClass="validation" runat="server" ErrorMessage="Username is required" ControlToValidate="Username"/>

                </div>

                <div class="form-group">
                    <label runat="server" for="<%# FirstName.ClientID %>">First Name</label>
                    <asp:TextBox CssClass="form-control" placeholder="First Name" ID="FirstName" runat="server"/>
                </div>

                <div class="form-group">
                    <label runat="server" for="<%# LastName.ClientID %>">Last Name</label>
                    <asp:TextBox CssClass="form-control" placeholder="Last Name" ID="LastName" runat="server"/>
                </div>

                <div class="form-group">
                    <label runat="server" for="<%# Email.ClientID %>">Email</label>
                    <asp:TextBox CssClass="form-control" placeholder="Email" ID="Email" runat="server"/>
                    <asp:RequiredFieldValidator CssClass="validation" runat="server" ErrorMessage="Email is required" ControlToValidate="Email"/>

                </div>

                <div class="form-group">
                    <label runat="server" for="<%# Password.ClientID %>">Password</label>
                    <asp:TextBox CssClass="form-control" TextMode="Password" ID="Password" placeholder="Password" runat="server"/>
                    <asp:RequiredFieldValidator CssClass="validation" runat="server" ControlToValidate="Password" ErrorMessage="Password cannot be empty"/>

                </div>

                <div class="form-group">
                    <label runat="server" for="<%# ConfirmPassword.ClientID %>">Confirm Password</label>
                    <asp:TextBox CssClass="form-control" TextMode="Password" ID="ConfirmPassword" placeholder="Password" runat="server" OnTextChanged="TextBox2_TextChanged"/>
                    <asp:RequiredFieldValidator CssClass="validation" runat="server" ErrorMessage="Please confirm your password" ControlToValidate="ConfirmPassword"/>


                </div>


                <asp:Button ID="Button1" OnClick="Button1_OnClick" runat="server" Height="30px" Text="Sign up"/>
            </div>
        </asp:Panel>
    </div>


</form>
</body>
</html>