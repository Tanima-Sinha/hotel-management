<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="edit_prices.aspx.vb" Inherits="WebApplication1.edit_prices" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <asp:Label ID="lblRoomPrice" runat="server" Text="Room Price:"></asp:Label>
<asp:TextBox ID="txtRoomPrice" runat="server"></asp:TextBox><br />

<asp:Label ID="lblFoodPrice" runat="server" Text="Food Price:"></asp:Label>
<asp:TextBox ID="txtFoodPrice" runat="server"></asp:TextBox><br />

<asp:Label ID="lblRestaurantPrice" runat="server" Text="Restaurant Price:"></asp:Label>
<asp:TextBox ID="txtRestaurantPrice" runat="server"></asp:TextBox><br />

<asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
<asp:Label ID="lblMessage" runat="server" ForeColor="Green" />



    </div>
    </form>
</body>
</html>
