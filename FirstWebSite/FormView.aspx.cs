using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FormView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //protected void FormView1_Updated(object sender, FormViewUpdatedEventArgs e)
    //{
    //    if (e.Exception != null)
    //    {
    //        lbl_Error.Text = "A database error has occured. Message: " + e.Exception.Message;

    //        e.ExceptionHandled = true;
    //        e.KeepInEditMode = true;
    //    }
    //    else if (e.AffectedRows == 0)
    //    {
    //        lbl_Error.Text = "Another user may have updated that product. Please try again.";
    //    }
    //    else
    //    {
    //        GridView1.DataBind();
    //    }
    //}

    //protected void FormView1_Deleted(object sender, FormViewDeletedEventArgs e)
    //{
    //    if (e.Exception != null)
    //    {
    //        lbl_Error.Text = "A database error has occurred. Message: " + e.Exception.Message;

    //        e.ExceptionHandled = true;
    //    }
    //    else if (e.AffectedRows == 0)
    //        lbl_Error.Text = "Another user may have updated that product. Please try again.";
    //    else
    //        GridView1.DataBind();
    //}

    //protected void FormView1_Inserted(object sender, FormViewInsertedEventArgs e)
    //{
    //    if (e.Exception != null)
    //    {
    //        lbl_Error.Text = "A database error has occured. Message: " + e.Exception.Message;

    //        e.ExceptionHandled = true;
    //        e.KeepInInsertMode = true;
    //    }
    //    else
    //        GridView1.DataBind();
    //}
}