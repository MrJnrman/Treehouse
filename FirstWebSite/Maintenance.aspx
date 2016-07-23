n<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Maintenance.aspx.cs" Inherits="Maintenance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 42px;
        }
        .auto-style4 {
            height: 835px;
            width: 1159px;
        }
        .auto-style5 {
            height: 42px;
            width: 1159px;
        }
        .auto-style6 {
            width: 1159px;
        }
        .auto-style7 {
            height: 18px;
        }
        .auto-style8 {
            height: 116px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">
                    <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/Images/Banner.jpg" Width="1053px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="Order_Link" runat="server" PostBackUrl="~/Home.aspx" CausesValidation="False">Home</asp:LinkButton>
&nbsp;
                    <asp:LinkButton ID="FormView_Link" runat="server" CausesValidation="False" PostBackUrl="~/FormView.aspx">Invoice Information</asp:LinkButton>
&nbsp;
                    <asp:LinkButton ID="DetailsView_Link" runat="server" PostBackUrl="~/Views.aspx" CausesValidation="False">Customer Informaton</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            </table>
                    <asp:ListView ID="ListView" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" 
                        InsertItemPosition="LastItem" OnSelectedIndexChanged="ListView_SelectedIndexChanged"
                        onitemdeleted="ListView_ItemDeleted" oniteminserted="ListView_ItemInserted" 
                        onitemupdated="ListView_ItemUpdated">
                        <AlternatingItemTemplate>
                            <tr style="background-color:#FFF8DC;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </td>
                                <td>
                                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("Product_Name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Product_PriceLabel" runat="server" Text='<%# Eval("Product_Price") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Product_DescriptionLabel" runat="server" Text='<%# Eval("Product_Description") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color:#008A8C;color: #FFFFFF;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" ValidationGroup="Edit" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </td>
                                <td>
                                    <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("Product_Name") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ErrorMessage="Product Name is a required field." Text="*" 
                                    ControlToValidate="Product_NameTextBox" ValidationGroup="Edit" ForeColor="White" Display="None" />
                                </td>
                                <td>
                                    <asp:TextBox ID="Product_PriceTextBox" runat="server" Text='<%# Bind("Product_Price") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ErrorMessage="Product Price is a required field." Text="*" 
                                    ControlToValidate="Product_PriceTextBox" ValidationGroup="Edit" ForeColor="White" Display="None" />
                                </td>
                                <td>
                                    <asp:TextBox ID="Product_DescriptionTextBox" runat="server" Text='<%# Bind("Product_Description") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ErrorMessage="Product Description is a required field." Text="*" 
                                    ControlToValidate="Product_DescriptionTextBox" ValidationGroup="Edit" ForeColor="White" Display="None" />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" ValidationGroup="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                </td>
                                <td>
                                    <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ErrorMessage="ProductID is a required field." Text="*" 
                                    ControlToValidate="ProductIDTextBox" ValidationGroup="Insert" ForeColor="White" Display="None" />
                                </td>
                                <td>
                                    <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("Product_Name") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ErrorMessage="Product Name is a required field." Text="*" 
                                    ControlToValidate="Product_NameTextBox" ValidationGroup="Insert" ForeColor="White" Display="None" />
                                </td>
                                <td>
                                    <asp:TextBox ID="Product_PriceTextBox" runat="server" Text='<%# Bind("Product_Price") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ErrorMessage="Product Price is a required field." Text="*" 
                                    ControlToValidate="Product_PriceTextBox" ValidationGroup="Insert" ForeColor="White" Display="None" />
                                </td>
                                <td>
                                    <asp:TextBox ID="Product_DescriptionTextBox" runat="server" Text='<%# Bind("Product_Description") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ErrorMessage="Product Description is a required field." Text="*" 
                                    ControlToValidate="Product_DescriptionTextBox" ValidationGroup="Insert" ForeColor="White" Display="None" />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color:#DCDCDC;color: #000000;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </td>
                                <td>
                                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("Product_Name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Product_PriceLabel" runat="server" Text='<%# Eval("Product_Price") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Product_DescriptionLabel" runat="server" Text='<%# Eval("Product_Description") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                <th runat="server"></th>
                                                <th runat="server">ID</th>
                                                <th runat="server">Product_Name</th>
                                                <th runat="server">Product_Price</th>
                                                <th runat="server">Product_Description</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </td>
                                <td>
                                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("Product_Name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Product_PriceLabel" runat="server" Text='<%# Eval("Product_Price") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Product_DescriptionLabel" runat="server" Text='<%# Eval("Product_Description") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductsConnectionString %>" 
                        SelectCommand="SELECT ProductID, Product_Name, Product_Price, Product_Description FROM Product ORDER BY ProductID" 
                        DeleteCommand="spDeleteProductByID" 
                        InsertCommand="INSERT INTO Product (ProductID,Product_Name,Product_Price,Product_Description)
                        VALUES (@ProductID,@Product_Name,@Product_Price,@Product_Description)" 
                        UpdateCommand="UPDATE Product SET Product_Name = @Product_Name, Product_Price = @Product_Price, Product_Description = @Product_Description
                        WHERE ProductID =@ProductID" DeleteCommandType="StoredProcedure" >
                        <DeleteParameters>
                            <asp:Parameter Name="ProductID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ProductID" />
                            <asp:Parameter Name="Product_Name" />
                            <asp:Parameter Name="Product_Price" />
                            <asp:Parameter Name="Product_Description" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Product_Name" />
                            <asp:Parameter Name="Product_Price" />
                            <asp:Parameter Name="Product_Description" />
                            <asp:Parameter Name="ProductID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteProductByID" InsertMethod="InsertProduct" SelectMethod="GetAllProductsInformation" TypeName="ProductDB" UpdateMethod="UpdateProduct">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="id" Type="String" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="price" Type="Decimal" />
                            <asp:Parameter Name="description" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="id" Type="String" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="price" Type="Decimal" />
                            <asp:Parameter Name="description" Type="String" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                    <asp:Label ID="lbl_Error" runat="server"></asp:Label>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please correct the following errors:" ValidationGroup="Edit" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" HeaderText="Please correct the following errors:" ValidationGroup="Insert" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
