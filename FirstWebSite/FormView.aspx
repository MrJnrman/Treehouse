<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormView.aspx.cs" Inherits="FormView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 752px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>
        <table class="auto-style1">
            <tr>
                <td colspan="4">
                    <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/Images/Banner.jpg" Width="1053px" />
                </td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="Order" runat="server" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
&nbsp;
                    <asp:LinkButton ID="ListView_Link" runat="server" CausesValidation="False" PostBackUrl="~/Maintenance.aspx">Product Information</asp:LinkButton>
&nbsp;
                    <asp:LinkButton ID="DetailsView_Link" runat="server" PostBackUrl="~/Views.aspx" CausesValidation="False">Customer Information</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:GridView ID="GridView2" runat="server" DataSourceID="ObjectDataSource2" DataKeyNames="CustomerID" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
                </td>
                <td>
                    <asp:FormView ID="FormView2" runat="server" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333">
                        <EditItemTemplate>
                            CustomerID:
                            <asp:Label ID="CustomerIDLabel1" runat="server" Text='<%# Eval("CustomerID") %>' />
                            <br />
                            Customer_First_Name:
                            <asp:TextBox ID="Customer_First_NameTextBox" runat="server" Text='<%# Bind("Customer_First_Name") %>' />
                            <br />
                            Customer_Last_Name:
                            <asp:TextBox ID="Customer_Last_NameTextBox" runat="server" Text='<%# Bind("Customer_Last_Name") %>' />
                            <br />
                            Newsletter:
                            <asp:CheckBox ID="NewsletterCheckBox" runat="server" Checked='<%# Bind("Newsletter") %>' />
                            <br />
                            PaymentMethod:
                            <asp:TextBox ID="PaymentMethodTextBox" runat="server" Text='<%# Bind("PaymentMethod") %>' />
                            <br />
                            InvoiceID:
                            <asp:TextBox ID="InvoiceIDTextBox" runat="server" Text='<%# Bind("InvoiceID") %>' />
                            <br />
                            Product_Name:
                            <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("Product_Name") %>' />
                            <br />
                            Product_Price:
                            <asp:TextBox ID="Product_PriceTextBox" runat="server" Text='<%# Bind("Product_Price") %>' />
                            <br />
                            Product_Quantity:
                            <asp:TextBox ID="Product_QuantityTextBox" runat="server" Text='<%# Bind("Product_Quantity") %>' />
                            <br />
                            SubTotal:
                            <asp:TextBox ID="SubTotalTextBox" runat="server" Text='<%# Bind("SubTotal") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <InsertItemTemplate>
                            Customer_First_Name:
                            <asp:TextBox ID="Customer_First_NameTextBox" runat="server" Text='<%# Bind("Customer_First_Name") %>' />
                            <br />
                            Customer_Last_Name:
                            <asp:TextBox ID="Customer_Last_NameTextBox" runat="server" Text='<%# Bind("Customer_Last_Name") %>' />
                            <br />
                            Newsletter:
                            <asp:CheckBox ID="NewsletterCheckBox" runat="server" Checked='<%# Bind("Newsletter") %>' />
                            <br />
                            PaymentMethod:
                            <asp:TextBox ID="PaymentMethodTextBox" runat="server" Text='<%# Bind("PaymentMethod") %>' />
                            <br />
                            InvoiceID:
                            <asp:TextBox ID="InvoiceIDTextBox" runat="server" Text='<%# Bind("InvoiceID") %>' />
                            <br />
                            Product_Name:
                            <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("Product_Name") %>' />
                            <br />
                            Product_Price:
                            <asp:TextBox ID="Product_PriceTextBox" runat="server" Text='<%# Bind("Product_Price") %>' />
                            <br />
                            Product_Quantity:
                            <asp:TextBox ID="Product_QuantityTextBox" runat="server" Text='<%# Bind("Product_Quantity") %>' />
                            <br />
                            SubTotal:
                            <asp:TextBox ID="SubTotalTextBox" runat="server" Text='<%# Bind("SubTotal") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            CustomerID:
                            <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />
                            <br />
                            Customer_First_Name:
                            <asp:Label ID="Customer_First_NameLabel" runat="server" Text='<%# Bind("Customer_First_Name") %>' />
                            <br />
                            Customer_Last_Name:
                            <asp:Label ID="Customer_Last_NameLabel" runat="server" Text='<%# Bind("Customer_Last_Name") %>' />
                            <br />
                            Newsletter:
                            <asp:CheckBox ID="NewsletterCheckBox" runat="server" Checked='<%# Bind("Newsletter") %>' Enabled="false" />
                            <br />
                            PaymentMethod:
                            <asp:Label ID="PaymentMethodLabel" runat="server" Text='<%# Bind("PaymentMethod") %>' />
                            <br />
                            InvoiceID:
                            <asp:Label ID="InvoiceIDLabel" runat="server" Text='<%# Bind("InvoiceID") %>' />
                            <br />
                            Product_Name:
                            <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Bind("Product_Name") %>' />
                            <br />
                            Product_Price:
                            <asp:Label ID="Product_PriceLabel" runat="server" Text='<%# Bind("Product_Price") %>' />
                            <br />
                            Product_Quantity:
                            <asp:Label ID="Product_QuantityLabel" runat="server" Text='<%# Bind("Product_Quantity") %>' />
                            <br />
                            SubTotal:
                            <asp:Label ID="SubTotalLabel" runat="server" Text='<%# Bind("SubTotal") %>' />
                            <br />

                        </ItemTemplate>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:FormView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllCustomers" TypeName="ProductDB"></asp:ObjectDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllProducts" TypeName="ProductDB"></asp:ObjectDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductsConnectionString %>" SelectCommand="SELECT Customer.CustomerID,Customer.Customer_First_Name,Customer.Customer_Last_Name,Customer.Newsletter,Customer.PaymentMethod,Invoices.InvoiceID,Invoices.Product_Name,Invoices.Product_Price,Invoices.Product_Quantity,Invoices.SubTotal FROM Customer
	Left JOIN Invoices
	ON Customer.CustomerID = Invoices.CustomerID
	WHERE Customer.CustomerID=@CustomerID
">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView2" Name="CustomerID" PropertyName="SelectedValue" DefaultValue="1111" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="lbl_Error" runat="server"></asp:Label>
    </form>
</body>
</html>
