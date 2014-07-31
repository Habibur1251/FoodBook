using System;
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

public partial class Admin_FoodMenu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ScriptResourceDefinition myScriptResDef = new ScriptResourceDefinition();
        myScriptResDef.Path = "~/Scripts/jquery-1.4.2.min.js";
        myScriptResDef.DebugPath = "~/Scripts/jquery-1.4.2.js";
        myScriptResDef.CdnPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.min.js";
        myScriptResDef.CdnDebugPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.js";
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery", null, myScriptResDef);


    }
    //int price2;
    string filename;
    protected void submit_Click(object sender, EventArgs e)
    {
        Add ad = new Add();
        string s = DropDownList1.SelectedValue;

        string s2 = DropDownList2.SelectedValue;
        if (s != null)
        {
            try
            {

                using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ResManagementConnectionString"].ConnectionString))
                {
                    using (SqlCommand command = new SqlCommand("SELECT ResId FROM ResturantList where ResName=@s", connection))
                    {
                        command.Parameters.AddWithValue("@s", s.Trim());
                        connection.Open();
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {

                                label.Text = reader["ResId"].ToString();
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
               
            }
        }
        
        if (FileUpload1.HasFile)
        {
            filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("../img/" + filename));

            int ResId = Convert.ToInt32(label.Text);
            ad.registration(FoodName.Text,ResId, s, s2, price.Text, description.Text, filename);
        }
        FoodName.Text= String.Empty;
        //DropDownList1.SelectedValue=" ";
        s = String.Empty;
        price.Text= String.Empty;
        description.Text = String.Empty;



        
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        FoodName.Text= String.Empty;
        //DropDownList1.SelectedValue=" ";
       // DropDownList1.SelectedValue = String.Empty;
        price.Text= String.Empty;
        description.Text = String.Empty;    
    }
    
}