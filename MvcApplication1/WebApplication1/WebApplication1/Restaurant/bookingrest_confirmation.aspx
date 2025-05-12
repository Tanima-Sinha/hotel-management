<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="bookingrest_confirmation.aspx.vb" Inherits="WebApplication1.bookingrest_confirmation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 212px;
        }
    </style>
</head>
<body style="height: 210px; width: 494px">
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" 
        Text="Are You Confirm For Booking Resturant?"></asp:Label>
    <br /><br /><br />
    <asp:Button ID="btnconfirmresturant" runat="server" Height="72px" Text="Confirm Booking Restaurant" 
        Width="214px" />

        &nbsp &nbsp &nbsp
        <asp:Button ID="btncancelresturant" runat="server" Height="72px" Text="Cancel Booking Restaurant" 
        Width="251px" />


    </form>
</body>
</html>
