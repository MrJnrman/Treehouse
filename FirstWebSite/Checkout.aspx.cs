using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Checkout : System.Web.UI.Page
{
    private Account account = new Account();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private Boolean isChecked()
    {
        if(rdb_yes.Checked == true )
            return true;
        else
            return false;
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Display.aspx");
    }
    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        SoftwareList list = (SoftwareList)Session["SoftwareList"];

        account.firstName = txt_fName.Text;
        account.lastName = txt_lName.Text;
        account.Newsletter = this.isChecked();
        account.PaymentMethod = ddl_paymentList.SelectedValue;
        Session["account"] = account;
       // pushCustomerData("INSERT INTO Customer (Customer_First_Name,Customer_Last_Name,Newsletter)" +
         //  " VALUES ('" + account.firstName + "','" + account.lastName + "','" + account.Newsletter + "')");
        ProductDB.InsertCustomers(account);
        ProductDB.InsertInvoiceData(SoftwareList.getCart());
        Response.Redirect("~/Confirmation.aspx");
    }

   

    protected void ddl_paymentList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}