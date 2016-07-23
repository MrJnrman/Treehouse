using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Confirmation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Back_Click(object sender, EventArgs e)
    {
        Session.Remove("account");
        SoftwareList list = SoftwareList.getCart();
        list.Clear();
        Response.Redirect("~/Home.aspx");
    }
}