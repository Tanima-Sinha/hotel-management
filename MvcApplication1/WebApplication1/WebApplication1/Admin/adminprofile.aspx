<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="adminprofile.aspx.vb" Inherits="WebApplication1.adminprofile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <!-- View Profile Panel -->
        <asp:Panel ID="ProfilePanel" runat="server" Visible="False" CssClass="profile-box">
            <h3>Admin Profile</h3>
            <p><strong>Name:</strong> <asp:Label ID="lblName" runat="server" /></p>
            <p><strong>Email:</strong> <asp:Label ID="lblEmail" runat="server" /></p>
            <p><strong>Phone:</strong> <asp:Label ID="lblPhone" runat="server" /></p>
            <p><strong>User Type:</strong> <asp:Label ID="lblUserType" runat="server" /></p>
        </asp:Panel>

        <!-- Edit Profile Panel -->
        <asp:Panel ID="EditProfilePanel" runat="server" Visible="False" CssClass="edit-box">
            <h3>Edit Profile</h3>
            <p><strong>Email:</strong> <asp:TextBox ID="txtemail" runat="server" /></p>
            <p><strong>Password:</strong> <asp:TextBox ID="txtPwd" runat="server" /></p>&nbsp &nbsp
            <p><strong>Phone:</strong> <asp:TextBox ID="TextBox1" runat="server" /></p>
            <asp:Button ID="btnSaveProfile" runat="server" Text="Save Changes" OnClick="btnSaveProfile_Click" />
        </asp:Panel>

        <!-- Action Buttons -->
        <asp:Button ID="btnProfile" runat="server" Text="View Profile" OnClick="btnProfile_Click" CssClass="btn btn-primary" Width="110px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:Button ID="btneditprofile" runat="server" Text="Edit Profile" 
            OnClick="btneditprofile_Click" Width="137px" />
                

            &nbsp;&nbsp;&nbsp;&nbsp;
        
    
        <asp:DropDownList ID="DropDownList1" runat="server" Height="39px" Width="186px" AutoPostBack="True">
            <asp:ListItem>Edit Price</asp:ListItem>
            <asp:ListItem>Edit Room Price</asp:ListItem>
            <asp:ListItem>Edit Food Price</asp:ListItem>
            <asp:ListItem>Edit Resturant Price</asp:ListItem>
        </asp:DropDownList>
                
                <asp:Button ID="btnEditPrices" runat="server" Text="Edit Prices" OnClick="btnEditPrices_Click" />

    
    </div>
    </form>
</body>
</html>
