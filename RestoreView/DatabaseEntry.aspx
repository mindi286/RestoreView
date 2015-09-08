<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatabaseEntry.aspx.cs" Inherits="RestoreView.DatabaseView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
        --<asp:Image ID="DBViewPhoto" runat="server" ImageUrl="~/Photos/Restore Photo.PNG" />
        <br />
        &nbsp;<br />
        <br />
    
    
        <input type="file" id="take-picture" accept="image/*"/>
        <br />
        <br />
        <asp:Label ID="categoryLabel" runat="server" Text="Category:  "></asp:Label>
        <asp:DropDownList ID="categorgyDropDownList" runat="server" DataSourceID="categorySqlDataSource" DataTextField="CategoryName" DataValueField="CategoryWeight"></asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="dateLabel" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="dateSoldLabel" runat="server" Text="Date Sold: "></asp:Label>
        <br />
        <asp:LinkButton ID="dateSoldIsTodayLink" runat="server" OnClick="dateSoldIsTodayLink_Click">Today</asp:LinkButton>
        <br />
        <asp:LinkButton ID="selectDateLinkButton" runat="server" OnClick="selectDateLinkButton_Click">Or Select Date:</asp:LinkButton>
        <asp:Calendar ID="dateSoldCalendar" runat="server" OnSelectionChanged="dateSoldCalendar_SelectionChanged" Visible="False"></asp:Calendar>
        <br />
    </div>
        
        <asp:Button ID="dbEntrySubmitButton" runat="server" OnClick="dbEntrySubmitButton_Click" Text="Submit" />
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>

       
        <br />
         <a href="DatabaseView.aspx"><input id="databaseView" type="button" value="View Database" /></a>
        <br />
        <br />
        <a href="DatabaseReports"<input id="DatabaseReports" type="button" value="Reports" />
        <asp:SqlDataSource ID="categorySqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:HabitatDBConnectionString3 %>" ProviderName="<%$ ConnectionStrings:HabitatDBConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
        </a>
            </form>
</body>
</html>
