using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class CartItem
{
	public CartItem() {}

    public CartItem(Software software, int quantity)
    {
        this.Software = software;
        this.Quantity = quantity;
    }

    public int Quantity { get; set; }
    public Software Software { get; set; }
    public Decimal Total { get; set; }


    public void AddQuantity(int quantity)
    {
        this.Quantity = quantity;
    }

    public Decimal CalculateBill(Decimal cost, int quantity)
    {
        return cost * quantity;
    }

    public string Display()
    {
        string displayString =
            Software.Product_Name + " (" + Quantity.ToString()
            + " at " + Software.Product_Price.ToString("c") + " each)";

        return displayString;
    }
}