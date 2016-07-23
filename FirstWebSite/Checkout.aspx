<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

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
        .auto-style3 {
            width: 298px;
        }
        .auto-style4 {
            height: 26px;
            width: 298px;
        }
        .auto-style5 {
            width: 95px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                   <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/Images/Banner.jpg" Width="1053px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Please Enter Relevant Information:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lbl_fName" runat="server" Text="First Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_fName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_fName" ErrorMessage="name required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lbl_lName" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_lName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_lName" ErrorMessage="name required*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lbl_payMethod" runat="server" Text="Payment Method"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddl_paymentList" runat="server" OnSelectedIndexChanged="ddl_paymentList_SelectedIndexChanged">
                        <asp:ListItem>Method</asp:ListItem>
                        <asp:ListItem>Cash</asp:ListItem>
                        <asp:ListItem>Credit Card</asp:ListItem>
                        <asp:ListItem>Debit Card</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddl_paymentList" ErrorMessage="select payment*" ForeColor="Red" InitialValue="Method"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="newsletter" runat="server" Text="Subscribe to Newsletter"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:RadioButton ID="rdb_yes" runat="server" Checked="True" GroupName="newsletter" Text="Yes" />
                    <asp:RadioButton ID="rdb_no" runat="server" GroupName="newsletter" Text="No" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5">
                                <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" />
                            </td>
                            <td>
                                <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="Confirm" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
