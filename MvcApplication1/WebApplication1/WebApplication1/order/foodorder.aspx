<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="foodorder.aspx.vb" Inherits="WebApplication1.foodorder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 62%;
            height: 235px;
        }
        .style5
        {
            width: 111px;
            height: 64px;
        }
        .style6
        {
            height: 64px;
            width: 185px;
        }
        .style8
        {
            width: 111px;
            height: 59px;
        }
        .style9
        {
            width: 185px;
            height: 59px;
        }
        .style10
        {
            width: 111px;
            height: 58px;
        }
        .style11
        {
            width: 185px;
            height: 58px;
        }
        .style12
        {
            width: 111px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 966px">
    
        <div style="height: 234px; width: 531px; margin-top: 30px">
            <table class="style1">
                <tr>
                    <td class="style10">
                        <asp:Label ID="Label1" runat="server" Text="Food Name"></asp:Label>
                    </td>
                    <td class="style11">
                        <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="194px">Dhosa and Chapati</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label2" runat="server" Text="Food Price"></asp:Label>
                    </td>
                    <td class="style9">
                        <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="194px">300</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label3" runat="server" Text="Enter Number of Foods"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="190px">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                <td class="style12">  
                    <asp:Button ID="btnfoodorder" runat="server" Height="40px" Text="Order" 
                        Width="120px" />
                    </td>
                
                
                 </tr>

            </table>
        </div>
    

    <br />

     <div style="height: 234px; width: 531px; margin-top: 30px">
            <table class="style1">
                <tr>
                    <td class="style10">
                        <asp:Label ID="Label4" runat="server" Text="Food Name"></asp:Label>
                    </td>
                    <td class="style11">
                        <asp:TextBox ID="TextBox3" runat="server" Height="31px" Width="194px">Chicken Biriyani</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label5" runat="server" Text="Food Price"></asp:Label>
                    </td>
                    <td class="style9">
                        <asp:TextBox ID="TextBox4" runat="server" Height="31px" Width="194px">500</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label6" runat="server" Text="Enter Number of Foods"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="27px" Width="190px">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                <td class="style12">  
                    <asp:Button ID="btnfoododer2" runat="server" Height="40px" Text="Order" 
                        Width="120px" />
                    </td>
                
                
                 </tr>

            </table>
        </div>
    










    </div>
    </form>
</body>
</html>
