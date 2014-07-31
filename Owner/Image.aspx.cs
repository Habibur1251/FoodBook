using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class Image : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String uid = Request.Cookies["Username"].Value;

        try
        {

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ResManagementConnectionString"].ConnectionString))
            {
                using (SqlCommand command = new SqlCommand("SELECT * FROM ResturantOwnerDetails where ResOId=@uid", connection))
                {
                    command.Parameters.AddWithValue("@uid", uid.Trim());
                    connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {

                            Response.Cookies["imagepath"].Value = reader[9].ToString();
                            Label1.Text = reader[9].ToString();
                            //secondVariable = reader[1].ToString();
                            //string s;
                            //imgpath.ImageUrl = reader[9].ToString();
                            //s = reader["imgpath"].ToString();
                            //label1.Text = "Test";
                            //string imgpath2 = Request.Cookies["imgpath"].Value;
                            //Label1.Text = imgpath2;
                        }
                    }
                }
            }
        }
        catch (Exception ex)
        {
            //error handling...
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = Request.Cookies["imagepath"].Value;

        imgpath.ImageUrl = Label1.Text;
    }
}