using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Maintenance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ListView_ItemDeleted(object sender, ListViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            lbl_Error.Text = "A database error has occurred.<br /><br />" +
                "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lbl_Error.Text = "Another user may have updated that category." +
                "<br />Please try again.";
        }
    }

    protected void ListView_ItemInserted(object sender, ListViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            lbl_Error.Text = "A database error has occurred.<br /><br />" +
                "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
    }

    protected void ListView_ItemUpdated(object sender, ListViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            lbl_Error.Text = "A database error has occurred.<br /><br />" +
                "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;
        }
        else if (e.AffectedRows == 0)
        {
            lbl_Error.Text = "Another user may have updated that category." +
                "<br />Please try again.";
        }
    }

    protected void ListView_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
  
}