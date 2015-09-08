<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatabaseView.aspx.cs" Inherits="RestoreView.Database_View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
        <asp:SqlDataSource ID="MegaViewDB" runat="server" ConnectionString="<%$ ConnectionStrings:HabitatDBConnectionString3 %>" ProviderName="<%$ ConnectionStrings:HabitatDBConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Inventory]"></asp:SqlDataSource>
            <asp:GridView ID="MegaViewGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="MegaViewDB">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="DateArrived" HeaderText="DateArrived" SortExpression="DateArrived" />
                    <asp:BoundField DataField="DateSold" HeaderText="DateSold" SortExpression="DateSold" />
                    <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                </Columns>
        </asp:GridView>

    </form>
</body>
</html>
