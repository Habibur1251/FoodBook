using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

/// <summary>
/// Summary description for Insert
/// </summary>
public class Add
{
    string strConnection;
    
    //SqlConnection con;
	public Add()
	{
       
       strConnection = ConfigurationManager.ConnectionStrings["ResManagementConnectionString"].ConnectionString;
       
    }
    public void  registration(String fname, String Id, String Password, String email, string dt, String gen, String con )
    {
        SqlConnection conn = new SqlConnection(strConnection);
        SqlCommand com = new SqlCommand();

        //SqlConnection conn = new SqlConnection();
        com.CommandType = System.Data.CommandType.StoredProcedure;
        com.CommandText = "sp_Usertable_add";     
               
        com.Parameters.AddWithValue("@UserId ", Id.ToString());     
        com.Parameters.AddWithValue("@Password ", Password.ToString());
        com.Parameters.AddWithValue("@Name", fname.ToString());
        com.Parameters.AddWithValue("@Contact", con.ToString());
        com.Parameters.AddWithValue("@email ", email.ToString());
        com.Parameters.AddWithValue("@DOB ", dt.ToString());
        com.Parameters.AddWithValue("@Gender ", gen.ToString());

        
        com.Connection= conn;

        try
        {
            conn.Open();
            com.ExecuteNonQuery();

        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            conn.Close();
            conn.Dispose();
        }  

    }

    public void registration(string rn,Int32 oid, string website, string Email, string contact, string description, string Area, string HouseNo, string RoadNo, string District, string Zip,string filename)
    {

        SqlConnection conn = new SqlConnection(strConnection);
        SqlCommand com = new SqlCommand();

        //SqlConnection conn = new SqlConnection();
        com.CommandType = System.Data.CommandType.StoredProcedure;
        com.CommandText = "sp_RestaurantList_add";

        com.Parameters.AddWithValue("@ResName ", rn.ToString());
        com.Parameters.AddWithValue("@ResOId ", oid);

        com.Parameters.AddWithValue("@website", website.ToString());
        com.Parameters.AddWithValue("@Email", Email.ToString());
        com.Parameters.AddWithValue("@contact ", contact.ToString());
        com.Parameters.AddWithValue("@description ", description.ToString());
        com.Parameters.AddWithValue("@Area ", Area.ToString());
        com.Parameters.AddWithValue("@HouseNo ", HouseNo.ToString());
        com.Parameters.AddWithValue("@RoadNo ", RoadNo.ToString());
        com.Parameters.AddWithValue("@District ", District.ToString());
        com.Parameters.AddWithValue("@Zip ", Zip.ToString());
        com.Parameters.AddWithValue("@imgpath ", filename.ToString());


        com.Connection = conn;

        try
        {
            conn.Open();
            com.ExecuteNonQuery();

        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            conn.Close();
            conn.Dispose();
        }  
    }
   
    //public void registration_ResOwner(String fname, String Password, String email, String Address,String con, String des)
    //{
    //    SqlConnection conn = new SqlConnection(strConnection);
    //    SqlCommand com = new SqlCommand();

    //    //SqlConnection conn = new SqlConnection();
    //    com.CommandType = System.Data.CommandType.StoredProcedure;
    //    com.CommandText = "sp_Usertable_add";

    //    com.Parameters.AddWithValue("@UserId ", Id.ToString());
    //    com.Parameters.AddWithValue("@Password ", Password.ToString());
    //    com.Parameters.AddWithValue("@Name", fname.ToString());
    //    com.Parameters.AddWithValue("@Contact", con.ToString());
    //    com.Parameters.AddWithValue("@email ", email.ToString());
    //    com.Parameters.AddWithValue("@DOB ", dt.ToString());
    //    com.Parameters.AddWithValue("@Gender ", gen.ToString());


    //    com.Connection = conn;

    //    try
    //    {
    //        conn.Open();
    //        com.ExecuteNonQuery();

    //    }
    //    catch (Exception ex)
    //    {
    //        throw ex;
    //    }
    //    finally
    //    {
    //        conn.Close();
    //        conn.Dispose();
    //    }

    //}


    public void registration(string Fname, int ResId, String ResName, String cat, string price, string description, string filename)
    {

        SqlConnection conn = new SqlConnection(strConnection);
        SqlCommand com = new SqlCommand();

        //SqlConnection conn = new SqlConnection();
        com.CommandType = System.Data.CommandType.StoredProcedure;
        com.CommandText = "sp_FoodTable_add";
        //Int32 price2 = Convert.ToInt32(price);
        com.Parameters.AddWithValue("@FoodName ", Fname.ToString());
        com.Parameters.AddWithValue("@ResId ", ResId);
        com.Parameters.AddWithValue("@ResName ", ResName.ToString());
        com.Parameters.AddWithValue("@foodcat ", cat.ToString());
        com.Parameters.AddWithValue("@Price ", price);
        com.Parameters.AddWithValue("@Description ", description.ToString());
        com.Parameters.AddWithValue("@imgpath ", filename);
        
        com.Connection = conn;

        try
        {
            conn.Open();
            com.ExecuteNonQuery();

        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            conn.Close();
            conn.Dispose();
        }
    }
    
    public void connection()
    {
        SqlConnection conn = new SqlConnection(strConnection);
       // return conn;

    }

    public void comment(String comm, int rate, int resid, String userid)
    {
        SqlConnection conn = new SqlConnection(strConnection);
        SqlCommand com = new SqlCommand();

        //SqlConnection conn = new SqlConnection();
        com.CommandType = System.Data.CommandType.StoredProcedure;
        com.CommandText = "sp_comments_add";
        //Int32 price2 = Convert.ToInt32(price);
        com.Parameters.AddWithValue("@Comments ", comm.ToString());
        com.Parameters.AddWithValue("@Rating ", rate);
        com.Parameters.AddWithValue("@ResId ", resid);
        com.Parameters.AddWithValue("@UserId ",userid.ToString());
        

        com.Connection = conn;

        try
        {
            conn.Open();
            com.ExecuteNonQuery();

        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            conn.Close();
            conn.Dispose();
        }


    }
}