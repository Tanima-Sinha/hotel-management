<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="bookingroom_confirmation.aspx.vb" Inherits="WebApplication1.bookingroom_confirmation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 198px; width: 500px">
    
        <asp:Label ID="Label1" runat="server" Text="Are You Confirm  For Booking Room?"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Button ID="btnconfirmroom" runat="server" Height="74px" Text="Confirm Room Booking" 
            Width="217px" /> &nbsp &nbsp &nbsp &nbsp
            <asp:Button ID="btncancelroom" runat="server" Height="74px" Text="Cancel Room Booking" 
            Width="233px" />
    
    </div>
    </form>
</body>
</html>
