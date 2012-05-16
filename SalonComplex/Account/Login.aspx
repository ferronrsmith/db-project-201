﻿<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SalonComplex.Account.Login" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

       <h2>
        Log In
    </h2>
     

    <p class="login"> 
        <asp:Label ID="LabelStatus" runat="server" ForeColor="Red"></asp:Label></p>
    <p class="login">
        Please enter your username and password.
        <asp:HyperLink ID="RegisterHyperLink" runat="server" EnableViewState="false">Register</asp:HyperLink> if you don't have an account.
    </p>

    <asp:Login ID="LoginUser" runat="server" EnableViewState="false" 
        RenderOuterTable="false" onauthenticate="LoginUserAuthenticate">
        <LayoutTemplate>
            <asp:ValidationSummary ID="AddValidationSummary" runat="server" CssClass="failureNotification" 
                 ValidationGroup="LoginUserValidationGroup"/>
            <div class="accountInfo">
                <fieldset class="login">
                    <legend>Account Information</legend>
                    <p class="login">
                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Username:</asp:Label>
                        <asp:TextBox ID="UserName" runat="server" CssClass="textEntry" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                             CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" 
                            ControlToValidate="UserName" ErrorMessage="Invalid UserName" ForeColor="Red" 
                            onservervalidate="CustomValidator1ServerValidate" 
                            CssClass="failureNotification" ValidationGroup="LoginUserValidationGroup">*</asp:CustomValidator>
                    </p>
                    <p class="login">
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                        <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" 
                            TextMode="Password" MaxLength="30"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                             CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator><asp:CustomValidator
                                 ID="CustomValidator2" runat="server" ErrorMessage="Invalid PassWord" 
                            CssClass="failureNotification" ForeColor="Red" 
                            onservervalidate="CustomValidator2ServerValidate" ValidationGroup="LoginUserValidationGroup">*</asp:CustomValidator>
                    </p>
                    <p>
                        <asp:CheckBox ID="RememberMe" runat="server"/>
                        <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline">Keep me logged in</asp:Label>
                    </p>
                     <p class="submitButton">
                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="LoginUserValidationGroup" CssClass="btn"/>
                </p>
                </fieldset>

            </div>
        </LayoutTemplate>
    </asp:Login>
</asp:Content>
