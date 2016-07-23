<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Views.aspx.cs" Inherits="Views" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 317px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
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
                    <asp:LinkButton ID="FormView_Link" runat="server" PostBackUrl="~/FormView.aspx" CausesValidation="False">Invoice Information</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:GridView ID="GridView2" runat="server" DataSourceID="ObjectDataSource1" DataKeyNames="CustomerID" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                    &nbsp;</td>
                <td>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="CustomerID" OnItemUpdated="DetailsView1_Updated" OnItemDeleted="DetailsView1_Deleted" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="351px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
                <asp:BoundField DataField="Customer_First_Name" HeaderText="Customer_First_Name" SortExpression="Customer_First_Name" />
                <asp:BoundField DataField="Customer_Last_Name" HeaderText="Customer_Last_Name" SortExpression="Customer_Last_Name" />
                <asp:CheckBoxField DataField="Newsletter" HeaderText="Newsletter" SortExpression="Newsletter" />
                <asp:BoundField DataField="PaymentMEthod" HeaderText="PaymentMEthod" SortExpression="PaymentMEthod" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbl_Error" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProductsConnectionString %>" 
                        SelectCommand="SELECT Customer.CustomerID, Customer.Customer_First_Name,Customer.Customer_Last_Name,Customer.Newsletter,Customer.PaymentMethod FROM Customer WHERE CustomerID=@CustomerID" 
                        InsertCommand="INSERT INTO Product (ProductID,Product_Name,Product_Price,Product_Description,ImageFile)
                        VALUES (@ProductID,@Product_Name,@Product_Price,@Product_Description,@ImageFile)" 
                        UpdateCommand="UPDATE Customer
                        SET
                        Customer_First_Name=@Customer_First_Name,
                        Customer_Last_Name=@Customer_Last_Name,
                        Newsletter=@Newsletter,
                        PaymentMethod=@PaymentMethod
                        WHERE 
                        CustomerID=@CustomerID" 
                        DeleteCommand="DELETE FROM Invoices WHERE CustomerID = @CustomerID 
                        DELETE FROM Customer WHERE CustomerID = @CustomerID">
                        <DeleteParameters>
                            <asp:Parameter Name="CustomerID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ProductID" />
                            <asp:Parameter Name="Product_Name" />
                            <asp:Parameter Name="Product_Price" />
                            <asp:Parameter Name="Product_Description" />
                            <asp:Parameter Name="ImageFile" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView2" DefaultValue="1111" Name="CustomerID" PropertyName="SelectedValue" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Customer_First_Name" />
                            <asp:Parameter Name="Customer_Last_Name" />
                            <asp:Parameter Name="Newsletter" />
                            <asp:Parameter Name="PaymentMethod" />
                            <asp:Parameter Name="CustomerID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllCustomers" TypeName="ProductDB"></asp:ObjectDataSource>
    </form>
</body>
</html>
