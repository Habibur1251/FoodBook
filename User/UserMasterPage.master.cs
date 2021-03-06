﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class Owner_OwnerMasterPage : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {
        String uid;

        if (Request.Cookies["Username"] != null)
        {
            uid = Request.Cookies["Username"].Value;

            try
            {

                using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ResManagementConnectionString"].ConnectionString))
                {
                    using (SqlCommand command = new SqlCommand("SELECT * FROM UserTable where UserId=@uid", connection))
                    {
                        command.Parameters.AddWithValue("@uid", uid.Trim());
                        connection.Open();
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {

                                //Response.Cookies["imagepath"].Value = reader["imgpath"].ToString();
                                Session["imagepath"] = reader["imgpath"].ToString();
                                Session["fName"] = reader["UserId"].ToString();

                                //secondVariable = reader[1].ToString();
                                //string s;
                                //imgpath.ImageUrl = reader[9].ToString();
                                //s = reader["imgpath"].ToString();
                                //label1.Text = "Test";
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                //error handling...
                Response.Redirect("Login.aspx");
            }
        }
    }
}

