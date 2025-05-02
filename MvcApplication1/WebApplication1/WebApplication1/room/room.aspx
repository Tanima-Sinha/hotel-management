<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="room.aspx.vb" Inherits="WebApplication1.room" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 60%;
            height: 272px;
            margin-right: 4px;
        }
        .style2
        {
            width: 75px;
        }
        .style3
        {
            width: 225px;
        }
        .style4
        {
            width: 95px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 851px">
    
        <div style="height: 269px; width: 489px">
            <table class="style1">
                <tr>
                    <td class="style2">
                        <asp:Label runat="server" Text="room type"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="175px">Family and Kids</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label1" runat="server" Text="room price"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="175px">1500</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label2" runat="server" Text="available rooms"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="175px">10</asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label3" runat="server" Text="how many rooms you want"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="42px" Width="170px">
                            <asp:ListItem>no selection</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Button ID="family_room" runat="server" Text="Book" Width="131px" />
                    </td>
                   
                </tr>
            </table>

            
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />


        <div style="height: 277px; width: 487px">
            <table class="style1">
                <tr>
                    <td class="style4">
                        <asp:Label runat="server" Text="room type" ID="Label4"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox4" runat="server" Width="175px">Single</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label5" runat="server" Text="room price"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox5" runat="server" Width="175px">1000</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label6" runat="server" Text="available rooms"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox6" runat="server" Width="175px">8</asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label7" runat="server" Text="how many rooms you want"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="42px" Width="170px">
                            <asp:ListItem>no selection</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Button ID="single_room" runat="server" Text="Book" Width="94px" />
                    </td>
                </tr>
            </table>
        </div>
    
        </div>
    
    </div>
    </form>
</body>
</html>
