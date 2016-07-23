using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


public class Business
{
    public string connectionString { get; set; }
    public SqlConnection conn { get; set; }
    public Decimal Total { get; set; }

	public Business()
	{
        connectionString = ConfigurationManager.ConnectionStrings["ProductsConnectionString"].ConnectionString;
        conn = new SqlConnection(connectionString);
	}

    public Decimal CalculateBill(Decimal cost, int quantity)
    {
        return cost * quantity;
    }

    private void insertAccount(Account account)
    {
        string command = "INSERT INTO Customer (Customer_First_Name,Customer_Last_Name,Newsletter)" +
            " VALUES ('" + account.firstName + "','" + account.lastName + "','" + account.Newsletter + "')";
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(command, conn);
            cmd.ExecuteNonQuery();
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            Console.Write(ex.Message);
        }
        finally
        {
            conn.Close();
        }
    }

    private void insertOrder()
    {
        SoftwareList list = SoftwareList.getCart();
        CartItem item;
        for (int i = 0; i < list.Count; i++)
        {
            item = list[i];
            string command = "";

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(command, conn);
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                Console.Write(ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }
    }


    public void insert(Account account)
    {
        this.insertAccount(account);
        this.insertOrder();
    }
}