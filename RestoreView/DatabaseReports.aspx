<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatabaseReports.aspx.cs" Inherits="RestoreView.DatabaseReports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <!--Choose between location and category to filter out a report in the database on the web -->
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Make A Selection</asp:ListItem>
        </asp:DropDownList>
    </form>
</body>
</html>
