<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="adminsignup.aspx.vb" Inherits="WebApplication1.adminsignup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 328px;
        }
        .style2
        {
            width: 319px;
        }
        .style3
        {
            width: 319px;
            height: 46px;
        }
        .style4
        {
            height: 46px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" Height="35px" Width="657px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Email Id"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtemail" runat="server" Height="35px" Width="657px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpwd" runat="server" Height="35px" Width="657px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="UserType"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="txtlist" runat="server" Height="28px" Width="656px">
                        <asp:ListItem>Customer</asp:ListItem>
                        <asp:ListItem>Waiter</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Text="Phone"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtphn" runat="server" Height="35px" Width="657px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="signup" runat="server" Text="Sign Up" Width="311px" />
                </td>
                <td>
                    <asp:Button ID="clear" runat="server" Text="Clear" Width="325px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
