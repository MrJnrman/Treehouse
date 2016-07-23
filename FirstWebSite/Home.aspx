<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        }
        .auto-style4 {
            height: 29px;
        }
        .auto-style5 {
            width: 377px;
            height: 26px;
            margin-left: 80px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style10 {
            width: 377px;
            height: 34px;
        }
        .auto-style12 {
            height: 34px;
        }
        .auto-style13 {
            width: 484px;
        }
        .auto-style14 {
            width: 484px;
            height: 34px;
        }
        .auto-style16 {
            width: 484px;
            height: 26px;
        }
        .auto-style17 {
            height: 54px;
        }
        .auto-style18 {
            width: 484px;
            height: 54px;
        }
        .auto-style19 {
            height: 54px;
        }
        .auto-style20 {
            width: 377px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style17" colspan="3">
        <table class="auto-style1">
            <tr>
                <td colspan="4">
                    <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl="~/Images/Banner.jpg" Width="1053px" />
                </td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="Order" runat="server" PostBackUrl="~/Home.aspx" CausesValidation="False">Home</asp:LinkButton>
&nbsp;
                    <asp:LinkButton ID="Maintenance" runat="server" CausesValidation="False" PostBackUrl="~/Maintenance.aspx">Product Information</asp:LinkButton>
&nbsp;
                    <asp:LinkButton ID="CustomerMaintenance" runat="server" PostBackUrl="~/FormView.aspx" CausesValidation="False">Invoice Information</asp:LinkButton>
                    &nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" PostBackUrl="~/Views.aspx">Customer Information</asp:LinkButton>
                </td>
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
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="lbl_software" runat="server" Text="Software Name"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:DropDownList ID="ddl_software" runat="server" DataSourceID="ObjectDataSource1" AutoPostBack="True" DataTextField="Product_Name" DataValueField="ProductID" OnSelectedIndexChanged="ddl_software_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProductsConnectionString %>" SelectCommand="SELECT ProductID, Product_Name FROM [Product]
                                   ORDER BY [Product_Name]"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="validateSource" runat="server" ControlToValidate="ddl_software" ErrorMessage="select product*" ForeColor="Red" InitialValue="NA" Display="Dynamic"></asp:RequiredFieldValidator>
                    <div id="formview">
                <asp:FormView ID="FormView1" runat="server"
                    DataSourceID="ObjectDataSource2" OnPageIndexChanging="FormView1_PageIndexChanging" Width="637px">
                    <ItemTemplate>
                        <div id="product">
                            <p id="name">
                                <asp:Label ID="lblName" runat="server"
                                    Text='<%# Bind("Product_Name") %>' >
                                </asp:Label>
                            </p>
                            <p id="description">
                                <asp:Label ID="lblDescription" runat="server"
                                    Text='<%# Bind("Product_Description") %>'>
                                </asp:Label>
                            </p>
                            <p id="product)price">
                                <asp:Label ID="lblPrice" runat="server"
                                    Text='<%# Bind("Product_Price", "{0:c} each") %>'>
                                </asp:Label>
                            </p>
                        </div>
                        <asp:Image ID="imgProduct" runat="server" width="135px"
                            ImageUrl='<%# Bind("ImageFile", "Images/{0}") %>' />
                    </ItemTemplate>
                </asp:FormView>
                        </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="lbl_quantity" runat="server" Text="Quantity"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txt_quantity" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="validateQuantity" runat="server" ControlToValidate="txt_quantity" ErrorMessage="select quantity*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rangeValidator" runat="server" ControlToValidate="txt_quantity" Display="Dynamic" ErrorMessage="Must Range between 1-10*" ForeColor="Red" MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Lime"></asp:Label>
                </td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductsConnectionString %>" 
                        SelectCommand="SELECT [ProductID], [Product_Name], [Product_Description], [ImageFile], [Product_Price] FROM [Product]
                        WHERE ([ProductID] = @ProductID)">
                        <SelectParameters>
                        <asp:ControlParameter ControlID="ddl_software" Name="ProductID"
                            PropertyName="SelectedValue" Type="String" />
                         </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllProducts" TypeName="ProductDB"></asp:ObjectDataSource>
                    <br />
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetProductsByID" TypeName="ProductDB">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddl_software" Name="id" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
                <td class="auto-style16">
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="btn_Add" runat="server" Text="Add To Card" OnClick="btn_AddClick" />
                    <asp:Button ID="btn_Cart" runat="server" OnClick="btn_CartClick" Text="Go To Cart" />
                </td>
                <td class="auto-style16">
                    &nbsp;</td>
                <td class="auto-style6"></td>
            </tr>
        </table>
    </form>
</body>
</html>
