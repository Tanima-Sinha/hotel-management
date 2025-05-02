<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="homepage.aspx.vb" Inherits="WebApplication1.homepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    

    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 44px;
        }
        .style9
        {
            width: 173px;
            height: 43px;
        }
        .style10
        {
            width: 161px;
            height: 43px;
        }
        .style12
        {
            width: 161px;
        }
    </style>

    

</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 329px; font-weight: 700;" id="signup">
    
        <table class="style1">
            <tr>
                <td class="style10">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="144px" AutoPostBack="True">
                        <asp:ListItem>Sign Up</asp:ListItem>
                        <asp:ListItem>sign up as customer</asp:ListItem>
                        <asp:ListItem>signup as admin</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
               
                </td>
                <td class="style9">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="27px" Width="140px" AutoPostBack="True">
                        <asp:ListItem>Log in</asp:ListItem>
                        <asp:ListItem>login as customer</asp:ListItem>
                        <asp:ListItem>login as admin</asp:ListItem>
                    </asp:DropDownList>
                </td>
                
              
                
                <td class="style12">
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="33px" Width="152px" AutoPostBack="True">
                        <asp:ListItem>Book</asp:ListItem>
                        <asp:ListItem>book room</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Make Order" Width="176px" />
                    <asp:Button ID="btnprofile" runat="server" style="margin-left: 75px" 
                        Text="Profile" Width="204px" />
                </td>
                
                
                
                
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
