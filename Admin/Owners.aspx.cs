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


public partial class Admin_Owners : System.Web.UI.Page
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
    protected void submit_Click(object sender, EventArgs e)
    {
        String strConnection = ConfigurationManager.ConnectionStrings["ResManagementConnectionString"].ConnectionString;

        SqlConnection conn = new SqlConnection(strConnection);
        SqlCommand com = new SqlCommand();

        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        FileUpload1.SaveAs(Server.MapPath("../img/" + filename));
        //SqlConnection conn = new SqlConnection();
        com.CommandType = System.Data.CommandType.StoredProcedure;
        com.CommandText = "sp_resturantownerdetails_Add";

        com.Parameters.AddWithValue("@ResOPass ", ResOPass.Text);
        com.Parameters.AddWithValue("@ResOName ", ResOName.Text);
        com.Parameters.AddWithValue("@ResOEmail ", ResOEmail.Text);
        com.Parameters.AddWithValue("@ResOAddress ", ResOAddress.Text);
        com.Parameters.AddWithValue("@ResOContact ", ResOContact.Text);
        com.Parameters.AddWithValue("@ResODes ", ResODes.Text);
        com.Parameters.AddWithValue("@imgpath", "img/" + filename);

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
            Email em = new Email();
            em.ownerMail(ResOEmail.Text);

            ResOPass.Text = String.Empty;
            ResOName.Text = String.Empty;
            ResOEmail.Text = String.Empty;
            ResOAddress.Text = String.Empty;
            ResOContact.Text = String.Empty;
            ResODes.Text = String.Empty;
        }

       
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        ResOPass.Text = String.Empty;
        ResOName.Text = String.Empty;
        ResOEmail.Text = String.Empty;
        ResOAddress.Text = String.Empty;
        ResOContact.Text = String.Empty;
        ResODes.Text = String.Empty;
    }
}