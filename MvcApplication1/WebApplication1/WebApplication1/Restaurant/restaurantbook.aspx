<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="restaurantbook.aspx.vb" Inherits="WebApplication1.resturantbook" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 52%;
            height: 198px;
        }
        .style2
        {
            height: 71px;
        }
        .style3
        {
            width: 81px;
        }
        .style4
        {
            height: 71px;
            width: 81px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 548px">
    
        <div style="width: 412px; height: 201px">
            <table class="style1">
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label1" runat="server" Text="Resturant Type"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server">Vivanta</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="TextBox2" runat="server">1000</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Button ID="btnbookrest" runat="server" Height="40px" Text="Book" 
                            Width="70px" />
                    </td>
                </tr>
            </table>
        </div>
    
    <br />


    <div style="width: 412px; height: 201px">
            <table class="style1">
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label3" runat="server" Text="Resturant Type"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server">PaperMoon</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="TextBox4" runat="server">1500</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Button ID="btnbookrest2" runat="server" Height="40px" Text="Book" 
                            Width="70px" />
                    </td>
                </tr>
            </table>
        </div>
    




    </div>
    </form>
</body>
</html>
