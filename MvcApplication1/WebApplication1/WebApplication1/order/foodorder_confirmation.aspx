<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="foodorder_confirmation.aspx.vb" Inherits="WebApplication1.foodorder_confirmation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 194px; width: 467px">
    <form id="form1" runat="server">
    <div style="height: 196px">
    
        <asp:Label ID="Label1" runat="server" Text="Are You Confirm To  Order Food?"></asp:Label>
        <br /><br /><br /><br /><br /><br />
        <asp:Button ID="btnconfirmorder" runat="server" Text="Confirm Order" Height="58px" 
            Width="207px" />

            &nbsp &nbsp &nbsp

            <asp:Button ID="btncancelorder" runat="server" Text="Cancel Order" Height="58px" 
            Width="223px" />

            <br /><br />

            <!-- Room/Restaurant Choice Panel -->
            <asp:Panel ID="pnlChoice" runat="server" Visible="false">
                <asp:Label ID="lblChoice" runat="server" Text="Do you want to have food in Room or Restaurant?" Font-Bold="True" />
                <br /><br />
                <asp:Button ID="btnRoom" runat="server" Text="Room" Width="120px" OnClick="btnRoom_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="btnRestaurant" runat="server" Text="Restaurant" Width="120px" OnClick="btnRestaurant_Click" />
            </asp:Panel>

    
    
    </div>
    </form>
</body>
</html>
