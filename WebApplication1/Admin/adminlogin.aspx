<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="adminlogin.aspx.vb" Inherits="WebApplication1.adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 307px;
        }
        .style2
        {
            width: 285px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Email Id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server" Height="37px" Width="684px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpwd" runat="server" Height="37px" Width="684px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="login" runat="server" Height="32px" Text="Log In" 
                        Width="273px" />
                </td>
                <td>
                    <asp:Button ID="cancel" runat="server" Height="39px" Text="Cancel" 
                        Width="310px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
