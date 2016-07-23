using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Display : System.Web.UI.Page
{
    private Account customerAccount;
    private Software orderedSoftware;
    private SoftwareList list;

    protected void Page_Load(object sender, EventArgs e)
    {
        list = SoftwareList.getCart();

        if (!IsPostBack)
            this.DisplayList();
    }

    private void DisplayList()
    {
        CartItem item;
        lstSoftware.Items.Clear();

        for (int i = 0; i < list.Count; i++)
        {
            item = list[i];
            lstSoftware.Items.Add(item.Display());
        }
    }

    protected void btn_Back(object sender, EventArgs e)
    {
        //this.pushCustomerData();
        Response.Redirect("~/Home.aspx");
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        if (list.Count > 0)
        {
            list.Clear();
           
            lstSoftware.Items.Clear();

            this.isEmpty();
        }
    }

    private void isEmpty()
    {
        if (lstSoftware.Items.Count < 1)
        {
            btnCheckout.Enabled = false;
        }
        else
        {
            btnCheckout.Enabled = true;
        }
    }
    protected void btnRemove_Click(object sender, EventArgs e)
    {
        if (list.Count > 0)
        {
            if (lstSoftware.SelectedIndex > -1)
            {
                
                list.RemoveAt(lstSoftware.SelectedIndex);
                
                this.DisplayList();
            }
            else
            {
                lblMessage.Text = "Please select item you wish to remove";
            }
            this.isEmpty();

        }
    }
    
    protected void btnCheckout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Checkout.aspx");
    }
}