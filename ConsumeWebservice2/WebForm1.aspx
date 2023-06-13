<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ConsumeWebservice2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Cart</title>
    <style type="text/css">
        .auto-style1 {
            width: 300px;
        }
        .auto-style2 {
            width: 252px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Online Cart</h2>
            <hr />
            <div>
                <label for="ItemIdTextBox">Item ID:</label>
                <input id="ItemIdTextBox" type="text" runat="server" class="auto-style2" />
                <label for="QuantityTextBox">Quantity:</label>
                <input id="QuantityTextBox" type="number" runat="server" class="auto-style1" /><asp:Button ID="AddToCartButton" runat="server" Text="Add to Cart" OnClick="AddToCartButton_Click" Width="233px" />
                <asp:Button ID="RemoveFromCartButton" runat="server" Text="Remove from Cart" OnClick="RemoveFromCartButton_Click" Width="257px" />
            </div>
            <hr />
            <asp:GridView ID="CartItemsGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="731px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="ItemId" HeaderText="Item ID" />
                    <asp:BoundField DataField="ItemName" HeaderText="Item Name" />
                    <asp:BoundField DataField="Price" HeaderText="Price" DataFormatString="{0:C}" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
