using System;
using System.Collections;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

[DataObject(true)]
public class ProductDB
{

    [DataObjectMethod(DataObjectMethodType.Select)]
    public static IEnumerable GetAllProducts()
    {
        SqlConnection con = new SqlConnection(GetConnectionString());

        string storedProcedureName = "spGetProductNames";
        SqlCommand cmd = new SqlCommand(storedProcedureName, con);
        cmd.CommandType = CommandType.StoredProcedure;

        con.Open();

        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

        return dr;
    }


    [DataObjectMethod(DataObjectMethodType.Select)]
    public static IEnumerable GetAllCustomers()
    {
        SqlConnection con = new SqlConnection(GetConnectionString());

        string storedProcedureName = "spGetCustomers";
        SqlCommand cmd = new SqlCommand(storedProcedureName, con);
        cmd.CommandType = CommandType.StoredProcedure;

        con.Open();

        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

        return dr;
    }

    [DataObjectMethod(DataObjectMethodType.Insert)]
    public static void InsertCustomers(Account account)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());

        string storedProcedureName = "spInsertCustomer";

        SqlCommand cmd = new SqlCommand(storedProcedureName, con);

        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.Add("@Customer_First_Name", SqlDbType.Char).Value = account.firstName;
        cmd.Parameters.Add("@Customer_Last_Name", SqlDbType.Char).Value = account.lastName;
        cmd.Parameters.Add("@Newsletter", SqlDbType.Bit).Value = account.Newsletter;
        cmd.Parameters.Add("@PaymentMethod", SqlDbType.Char).Value = account.PaymentMethod;

        con.Open();

        cmd.ExecuteNonQuery();

        con.Close();
    }

    [DataObjectMethod(DataObjectMethodType.Insert)]
    public static void InsertInvoiceData(SoftwareList list)
    {
        CartItem item;
        SqlConnection con = new SqlConnection(GetConnectionString());

        string storedProcedureName = "spInsertData";

        SqlCommand cmd = new SqlCommand(storedProcedureName, con);

        cmd.CommandType = CommandType.StoredProcedure;

        for (int i = 0; i < list.Count; i++)
        {
            item = list[i];
            cmd.Parameters.Add("@Product_ID", SqlDbType.Char).Value = item.Software.ProductID;
            cmd.Parameters.Add("@Product_Name", SqlDbType.Char).Value = item.Software.Product_Name;
            cmd.Parameters.Add("@Product_Price", SqlDbType.Decimal).Value = item.Software.Product_Price;
            cmd.Parameters.Add("@Product_Quantity", SqlDbType.Int).Value = item.Quantity;

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

        }
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public static IEnumerable GetAllProductsInformation()
    {
        SqlConnection con = new SqlConnection(GetConnectionString());

        string storedProcedureName = "spGetProducts";
        SqlCommand cmd = new SqlCommand(storedProcedureName, con);
        cmd.CommandType = CommandType.StoredProcedure;

        con.Open();

        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

        return dr;
    }

    [DataObjectMethod(DataObjectMethodType.Update)]
    public static void UpdateProduct(string id, string name, Decimal price, string description/*, string orig_name, Decimal orig_price, string orig_description, string orig_id*/)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());

        string storedProcedureName = "spUpdateProduct";

        SqlCommand cmd = new SqlCommand(storedProcedureName, con);

        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.Add("@ProductID", SqlDbType.Char).Value = id;
        cmd.Parameters.Add("@Product_Name", SqlDbType.Char).Value = name;
        cmd.Parameters.Add("@Product_Price", SqlDbType.Decimal).Value = price;
        cmd.Parameters.Add("@Product_Description", SqlDbType.Char).Value = description;
       /* cmd.Parameters.Add("@original_ProductID", SqlDbType.Char).Value = orig_id;
        cmd.Parameters.Add("@original_Product_Name", SqlDbType.Char).Value = orig_name;
        cmd.Parameters.Add("@original_Product_Price", SqlDbType.Decimal).Value = orig_price;
        cmd.Parameters.Add("@original_Product_Description", SqlDbType.Char).Value = orig_description;*/

        con.Open();

        cmd.ExecuteNonQuery();

        con.Close();
    }



    [DataObjectMethod(DataObjectMethodType.Delete)]
    public static void DeleteProductByID(string id)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());

        string storedProcedureName = "spDeleteProductByID";

        SqlCommand cmd = new SqlCommand(storedProcedureName, con);

        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.Add("@ProductID", SqlDbType.Char).Value = id;

        con.Open();

        cmd.ExecuteNonQuery();

        con.Close();
       // cmd.ExecuteReader(CommandBehavior.CloseConnection);
    }

    

    [DataObjectMethod(DataObjectMethodType.Insert)]
    public static void InsertProduct(string id, string name, Decimal price, string description)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());

        string storedProcedureName = "spInsertProduct";

        SqlCommand cmd = new SqlCommand(storedProcedureName, con);

        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.Add("@ProductID", SqlDbType.Char).Value = id;
        cmd.Parameters.Add("@Product_Name", SqlDbType.Char).Value = name;
        cmd.Parameters.Add("@Product_Price", SqlDbType.Decimal).Value = price;
        cmd.Parameters.Add("@Product_Description", SqlDbType.Char).Value = description;

        con.Open();

        cmd.ExecuteNonQuery();

        con.Close();
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public static IEnumerable GetProductsByID(string id)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());

        string storedProcedureName = "spGetProductsByID";

        SqlCommand cmd = new SqlCommand(storedProcedureName, con);
        
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.Add("@ProductID", SqlDbType.Char).Value = id;

        con.Open();

        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

   

        return dr;
    }

    public static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["ProductsConnectionString"].ConnectionString;
    }
	public ProductDB()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}