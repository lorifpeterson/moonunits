<%@	Page Language="C#" MasterPageFile="~/Default.master" Title="Moonunits.com | Home"
	CodeFile="Default.aspx.cs" Inherits="Default_aspx" %>

<asp:content id="Content1" contentplaceholderid="Main" runat="server">

	<div class="shim column"></div>
	
	<div class="page" id="home">
		<div id="sidebar">
			<asp:formview id="FormView1" runat="server" datasourceid="ObjectDataSource1" ondatabound="Randomize" cellpadding="0" borderwidth="0" enableviewstate="false">
				<ItemTemplate>
					<h4>
                        Picture from photo gallery</h4>
					<table border="0" cellpadding="0" cellspacing="0" class="photo-frame">
						<tr>
							<td class="topx--"></td>
							<td class="top-x-"></td>
							<td class="top--x"></td>
						</tr>
						<tr>
							<td class="midx--"></td>
							<td><a href='Details.aspx?AlbumID=<%# Eval("AlbumID") %>&Page=<%# Container.DataItemIndex %>'>
								<img src="Handler.ashx?PhotoID=<%# Eval("PhotoID") %>&Size=M" class="photo_198" style="border:4px solid white" alt='Photo Number <%# Eval("PhotoID") %>' /></a></td>
							<td class="mid--x"></td>
						</tr>
						<tr>
							<td class="botx--"></td>
							<td class="bot-x-"></td>
							<td class="bot--x"></td>
						</tr>
					</table>
					<p><a href='Download.aspx?AlbumID=<%# Eval("AlbumID") %>&Page=<%# Container.DataItemIndex %>'>
						<asp:image runat="Server" id="DownloadButton" AlternateText="download photo" skinid="download"/></a></p>
					<p>See <a href="Albums.aspx">more photos </a></p>
					<hr />
				</ItemTemplate>
			</asp:formview>
			<h4>
                Rob's band</h4>
			<p>
                <asp:HyperLink ID="lnkElectricEyeBand" runat="server" NavigateUrl="http://www.electriceyeband.com"
                    Target="_blank" Width="199px" Height="24px">Electric Eye's home page</asp:HyperLink>&nbsp;<br />
                <asp:HyperLink ID="lnkElectricEyeMySpace" runat="server" NavigateUrl="http://www.myspace.com/electriceyeband"
                    Target="_blank" Width="199px" Height="22px">Electric Eye's MySpace</asp:HyperLink>&nbsp;</p>
            <h4>Quote of the day</h4>
            <br />
            <p>"It is never too late to be what you might have been."<br />
                -- George Eliot</p>
		</div>
		<div id="content">
			<h3>Welcome	to My Site</h3>
			<p>This	is my personal site. I bought this domain in dedication to my dad.</p>
            <p>I mainly use this site to expand my knowledge on web development.</p>
                
            <div id="whatsnew" style="width: 427px">
				<h4>What's New</h4>
				<p>Got a new car this year - 2009 Chevy Malibu.  First new car I have ever owned - getting spoiled.  :-)</p>
			    <br />
			</div>
			<h4>What's Up Lately </h4>
			<p>Just waiting for summer.....</p>
            <br />
            <br />
            <p><strong>CAPRICORN</strong> - The Go-Getter (Dec 22 - Jan 19)&nbsp;<br />
                Patient and wise. Practical and rigid. Ambitious.  Tends to be
            Good-looking. Humorous and funny. Can be a bit shy and reserved. Often pessimistic. Capricorns tend to act 
            before they think and can be Unfriendly at times. Hold grudges. Like competition. Get what they Want.</p>

		</div>
	</div>

	<asp:ObjectDataSource ID="ObjectDataSource1" Runat="server" TypeName="PhotoManager" SelectMethod="GetPhotos">
	</asp:ObjectDataSource>

</asp:content>
