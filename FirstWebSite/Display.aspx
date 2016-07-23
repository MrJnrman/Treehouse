<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Display.aspx.cs" Inherits="Display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            width: 402px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
            width: 194px;
        }
        .auto-style10 {
            width: 373px;
        }
        .auto-style11 {
            width: 373px;
            height: 127px;
        }
        .auto-style12 {
            height: 127px;
        }
        .auto-style13 {
            height: 33px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div>
    
                   <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/Images/Banner.jpg" Width="1053px" />
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style11">
    
        <asp:ListBox ID="lstSoftware" runat="server" Width="351px"></asp:ListBox>
    
                </td>
                <td class="auto-style12">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style13">
                                <asp:Button ID="btnRemove" runat="server" OnClick="btnRemove_Click" Text="Remove Item" Width="113px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Clear" runat="server" OnClick="btnClear_Click" Text="Clear Cart" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Back" runat="server" Text="Back To Order"  OnClick="btn_Back" Height="30px" Width="125px"  />
                    <asp:Button ID="btnCheckout" runat="server" Text="Checkout" Height="30px" OnClick="btnCheckout_Click" style="margin-top: 0px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="#CC0000"></asp:Label>
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
