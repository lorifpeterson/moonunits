<%@ Page Language="C#" MasterPageFile="~/Default.master" Title="Moonunits.com | Download" 
    CodeFile="Download.aspx.cs" Inherits="Download_aspx" %>

<asp:content id="Content1" contentplaceholderid="Main" runat="server">

    <div>
		<p>Right-click and select "Save Picture As.." to download the picture.</p>
		<asp:formview id="FormView1" runat="server" datasourceid="ObjectDataSource1" borderstyle="none" borderwidth="0" CellPadding="0" cellspacing="0">
			<itemtemplate>
				<img src="Handler.ashx?PhotoID=<%# Eval("PhotoID") %>" alt='Photo Number <%# Eval("PhotoID") %>' /></itemtemplate>
		</asp:formview>

		<asp:ObjectDataSource ID="ObjectDataSource1" Runat="server" TypeName="PhotoManager" 
			SelectMethod="GetPhotos">
			<SelectParameters>
				<asp:QueryStringParameter Name="AlbumID" Type="Int32" QueryStringField="AlbumID" DefaultValue="0"/>
			</SelectParameters>
		</asp:ObjectDataSource>
        <br />
        <br />

    </div>
</asp:content>
