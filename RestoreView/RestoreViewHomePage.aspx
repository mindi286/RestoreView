<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RestoreViewHomePage.aspx.cs" Inherits="RestoreView.RestoreViewHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="RestoreViewHeader" runat="server" ImageUrl="~/Photos/Restore Photo.PNG" />
    </div>
        <br />
        <br />
        <asp:Label ID="UserNameLabel" runat="server" Text="Username:"></asp:Label>
        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="PasswordLabel" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="Password" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="locationLabel" runat="server" Text="Location"></asp:Label>
        <asp:DropDownList ID="locationDropDownList" runat="server" DataSourceID="MegaViewDB" DataTextField="LocName" DataValueField="LocName"></asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="LoginButton" runat="server" Text="Submit" OnClick="LoginButton_Click" />
        <asp:SqlDataSource ID="MegaViewDB" runat="server" ConnectionString="<%$ ConnectionStrings:HabitatDBConnectionString3 %>" ProviderName="<%$ ConnectionStrings:HabitatDBConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Location]"></asp:SqlDataSource>
        
    </form>
</body>
</html>
