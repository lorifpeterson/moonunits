<%@ Page Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Moonunits.com | Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <div class="page" style="width: 648px; height: 325px" >
		<div id="content">
            &nbsp;<asp:loginview id="LoginArea" runat="server">
				<AnonymousTemplate>
					<asp:login id="Login1" runat="server">
						<layouttemplate>
							<div class="login">
								<h4>Login to Site</h4>
								<asp:label runat="server" id="UserNameLabel" CssClass="label" associatedcontrolid="UserName">User Name</asp:label>
								<asp:textbox runat="server"	id="UserName" cssclass="textbox" accesskey="u" />
								<asp:requiredfieldvalidator	runat="server" id="UserNameRequired" controltovalidate="UserName" validationgroup="Login1" errormessage="User Name is required." tooltip="User Name	is required." >*</asp:requiredfieldvalidator>
								<asp:label runat="server" id="PasswordLabel" CssClass="label" associatedcontrolid="Password">Password</asp:label>
								<asp:textbox runat="server"	id="Password" textmode="Password" cssclass="textbox" accesskey="p" />
								<asp:requiredfieldvalidator	runat="server" id="PasswordRequired" controltovalidate="Password" validationgroup="Login1" tooltip="Password is	required." >*</asp:requiredfieldvalidator>
								<div><asp:checkbox runat="server" id="RememberMe" text="Remember me	next time"/></div>
								<asp:imagebutton runat="server"	id="LoginButton" CommandName="Login" AlternateText="login" skinid="login" CssClass="button"/>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PasswordRecovery.aspx">Forgot Password?</asp:HyperLink>
								<a href="register.aspx"	class="button"><asp:image id="Image1" runat="server"  AlternateText="create	a new account" skinid="create" Visible="False"/></a>
								<p><asp:literal	runat="server" id="FailureText"	enableviewstate="False"></asp:literal></p>
							</div>
						</layouttemplate>
					</asp:login>
				</anonymoustemplate>
				<LoggedInTemplate>
					<h4><asp:loginname id="LoginName1" runat="server" formatstring="Welcome	{0}!" /></h4>
				</LoggedInTemplate>
			</asp:loginview>
        </div>
    </div>
</asp:Content>

