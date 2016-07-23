using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class SoftwareList
{
    private List<CartItem> listItems;

	public SoftwareList()
	{
	    listItems = new List<CartItem>();
	}

    public int Count { get {return listItems.Count;}}

    public CartItem this[int index]
    {
        get { return listItems[index]; }
        set { listItems[index] = value; }
    }

    public CartItem this[string id]
    {
        get
        {
            foreach (CartItem cart in listItems)
                if (cart.Software.ProductID == id) return cart;
                return null;
        }
    }

    public static SoftwareList getCart()
    {
        SoftwareList cart = (SoftwareList)HttpContext.Current.Session["Cart"];
        if( cart == null)
            HttpContext.Current.Session["Cart"] = new SoftwareList();
        return (SoftwareList)HttpContext.Current.Session["Cart"];
    }

    public void addSoftware(Software software, int quantity)
    {
        CartItem cart = new CartItem(software, quantity);
        listItems.Add(cart);
    }

    public void RemoveAt(int index)
    {
        listItems.RemoveAt(index);
    }

    public void Clear()
    {
        listItems.Clear();
    }
}