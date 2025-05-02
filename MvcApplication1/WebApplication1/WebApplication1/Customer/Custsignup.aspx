<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Custsignup.aspx.vb" Inherits="WebApplication1.signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            width: 100%;
            height: 396px;
        }
        .style4
        {
            width: 242px;
        }
    </style>
</head>
<body style="height: 395px">
    <form id="form1" runat="server">
    <div>
    
        <table class="style3">
            <tr>
                <td class="style4">
                    <asp:Label runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" Height="29px" Width="618px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label runat="server" Text="Email Id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server" Height="32px" Width="620px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpwd" runat="server" Height="34px" Width="620px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label1" runat="server" Text="Usertype"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="txtusertype" runat="server" Height="51px" Width="614px">
                        <asp:ListItem>User</asp:ListItem>
                        <asp:ListItem>Waiter</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="txtphn" runat="server" Text="Phone"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtphone" runat="server" Height="34px" Width="615px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Button ID="Register" runat="server" Height="29px" onclick="Unnamed1_Click" 
                        Text="Sign Up" Width="220px" />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="26px" Text="Clear" 
                        Width="257px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
