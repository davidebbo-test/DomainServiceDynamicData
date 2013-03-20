<%@ Page Language="C#" AutoEventWireup="true" Inherits="Account_Logon" Codebehind="Logon.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Log On</h2>
        <p>
            Please enter your username and password. <a href="Register.aspx?returnurl=<% =Server.UrlEncode(Request["ReturnUrl"]) %>">Register</a> if you don't have an account.
        </p>
        <asp:Login ID="Login1" runat="server">
            <LayoutTemplate>
                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                <div>
                    <fieldset>
                        <legend>Account Information</legend>
                        <p>
                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Username:</asp:Label>
                            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                        </p>
                        <p>
                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                        </p>
                        <p>
                            <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                        </p>
                        <p>
                            <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log On" ValidationGroup="Login1" />
                        </p>
                    </fieldset>
                </div>
            </LayoutTemplate>
        </asp:Login>
    </form>
</body>
</html>
