<%@ Page Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="PasswordRecovery.aspx.cs" Inherits="PasswordRecovery" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" Style="z-index: 100;
        left: 258px; position: absolute; top: 152px">
        <MailDefinition From="webmaster@moonunits.com" Subject="Your account">
        </MailDefinition>
    </asp:PasswordRecovery>
</asp:Content>

