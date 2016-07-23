<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Confirmation.aspx.cs" Inherits="Confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/Images/Banner.jpg" Width="1053px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" ForeColor="#003300" Text="Your Order Has Successfully Been Made. Thank You For Shopping"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn_Back" runat="server" OnClick="btn_Back_Click" Text="Back to Home" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
