using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Home : System.Web.UI.Page
{
    private Account customerAccount = new Account();
    private Software orderedSoftware;
    private SoftwareList cart = new SoftwareList();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddl_software.DataBind();
            if ((cart = (SoftwareList)HttpContext.Current.Session["Cart"]) == null)
                btn_Cart.Enabled = false;
            ddl_software.Items.Insert(0, new ListItem("Select Product", "NA"));
            btn_Cart.Enabled = false;
        }
    }

    private Software getSelectedSoftware()
    {
        //int quantity;
        DataView softwareTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

        softwareTable.RowFilter = "ProductID = '" + ddl_software.SelectedValue + "'";

        DataRowView row = (DataRowView)softwareTable[0];

        Software software = new Software();

        software.ProductID = row["ProductID"].ToString();
        software.Product_Name = row["Product_Name"].ToString();
        software.Product_Price = (Decimal)row["Product_Price"];

        return software;
    }

    protected void toggleControls()
    {
        if (btn_Cart.Enabled == true)
        {
            ddl_software.SelectedIndex = ddl_software.Items.IndexOf(ddl_software.Items.FindByText("Selected Value"));
            validateSource.Enabled = false;
            rangeValidator.Enabled = false;
            validateQuantity.Enabled = false;
            btn_Add.Enabled = false;
            txt_quantity.Enabled = false;
        }

    }

    protected void btn_AddClick(object sender, EventArgs e)
    {
        orderedSoftware = this.getSelectedSoftware();

        cart = SoftwareList.getCart();

        CartItem cartItem = cart[orderedSoftware.ProductID];

        if (cartItem == null)
            cart.addSoftware(orderedSoftware, Convert.ToInt32(txt_quantity.Text));
        else
            cartItem.AddQuantity(Convert.ToInt32(txt_quantity.Text));

        if (btn_Cart.Enabled == false)
        {
            btn_Cart.Enabled = true;
        }
        toggleControls();
        txt_quantity.Text = "";
        lblMessage.Text = "Cart Updated";
    }

    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {
        
    }

    protected void btn_CartClick(object sender, EventArgs e)
    {
        Response.Redirect("~/Display.aspx");
    }

    protected void ddl_software_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl_software.SelectedIndex == 0)
        {
            toggleControls();
        }
        else
        {
            txt_quantity.Enabled = true;
            btn_Add.Enabled = true;
            rangeValidator.Enabled = true;
            validateQuantity.Enabled = true;
            lblMessage.Text = "";
        }
        
    }
}