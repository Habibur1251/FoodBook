using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class Controller_ImageUp : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        

        if (FileUpload1.HasFile)
        {
            
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("/Owner/img/" + filename));

            String rsoid = Request.Cookies["UserName"].Value;
            string strConnection = ConfigurationManager.ConnectionStrings["ResManagementConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strConnection);
            conn.Open();
           
            SqlCommand com = new SqlCommand("Update ResturantOwnerDetails "
                      + "set imgpath=@ResOImg where ResOId=@rsoid", conn);
            com.Parameters.AddWithValue("@ResOImg","/Owner/img/"+ filename);
            com.Parameters.AddWithValue("@rsoid", rsoid);
            com.ExecuteNonQuery();
            conn.Close();
        
        }
    }
}