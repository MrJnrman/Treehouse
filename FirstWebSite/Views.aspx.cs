using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DetailsView1_Updated(object sender, DetailsViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            lbl_Error.Text = "A database error has occured. Message: " + e.Exception.Message;

            e.ExceptionHandled = true;
            e.KeepInEditMode = true;
        }
        else if (e.AffectedRows == 0)
        {
            lbl_Error.Text = "Another user may have updated that product. Please try again.";
        }
        else
        {
            GridView2.DataBind();
        }
    }

    protected void DetailsView1_Deleted(object sender, DetailsViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            lbl_Error.Text = "A database error has occurred. Message: " + e.Exception.Message;

            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
            lbl_Error.Text = "Another user may have updated that product. Please try again.";
        else
            GridView2.DataBind();
    }

}