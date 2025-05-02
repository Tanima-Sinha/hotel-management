<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Custlogin.aspx.vb" Inherits="WebApplication1.login1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 62%;
            height: 257px;
            margin-bottom: 0px;
        }
        .style2
        {
            width: 297px;
        }
        .style5
        {
            width: 999px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style5">
                    Email Id<asp:TextBox ID="txtemail" runat="server" Height="32px" style="margin-left: 185px" 
                        Width="696px"></asp:TextBox>
                </td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="txtpwd" runat="server" Height="32px" 
                        style="margin-left: 182px" Width="694px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Button ID="login" runat="server" Height="43px" Text="LogIn" 
                        Width="992px" />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Button ID="signup" runat="server" Height="34px" Text="signup" 
                        Width="994px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
