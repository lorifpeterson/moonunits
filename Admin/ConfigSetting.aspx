<%@ Page Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="ConfigSetting.aspx.cs" Inherits="Admin_ConfigSetting" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <div>
        <asp:ChangePassword ID="ChangePassword" runat="server" DisplayUserName="True"></asp:ChangePassword>
    </div>
    <br />
    <br />
    <div style="width: 410px; height: 217px">
        <h4>
            Connection String Configuration Setting</h4>
        <p>
            <asp:Button ID="btnProtect" runat="server" OnClick="btnProtect_Click" Style="left: -26px;
                position: relative; top: 2px" Text="Protect" Width="95px" />
            <asp:Button ID="btnUnProtect" runat="server" OnClick="btnUnProtect_Click" Style="left: 18px;
                position: relative; top: 2px" Text="UnProtect" Width="88px" />
        </p>
    </div>
</asp:Content>

