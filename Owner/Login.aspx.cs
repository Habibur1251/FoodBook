using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ScriptResourceDefinition myScriptResDef = new ScriptResourceDefinition();
        myScriptResDef.Path = "~/Scripts/jquery-1.4.2.min.js";
        myScriptResDef.DebugPath = "~/Scripts/jquery-1.4.2.js";
        myScriptResDef.CdnPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.min.js";
        myScriptResDef.CdnDebugPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.js";
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery", null, myScriptResDef);


            if (CheckBox1.Checked)
            {
                if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
                {
                    user.Text = Request.Cookies["UserName"].Value;
                    pass.Attributes["value"] = Request.Cookies["Password"].Value;
                }
            }
            else
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
            }
            
        
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
            Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
        }

        else
        {
            Response.Cookies["UserName"].Expires = DateTime.Now.AddHours(1);
            Response.Cookies["Password"].Expires = DateTime.Now.AddHours(1);

        }
        Response.Cookies["UserName"].Value = user.Text.Trim();
        Response.Cookies["Password"].Value = pass.Text.Trim();

        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter();
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ResManagementConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("sp_login2", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserId", user.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", pass.Text.Trim());
            adp.SelectCommand = cmd;
            adp.Fill(dt);
            cmd.Dispose();
            if (dt.Rows.Count > 0)
            {
                //lblStatus.Text = "Login Successfull";
                //Or in show messagebox using  ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Login Successfull');", true);
                //Or write using Response.Write("Login Successfull");
                Response.Redirect("Default.aspx");
               
            }
            else
            {
                //Label1.Text = "Invalid id or Password";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Invalid id or Password');", true);
                //lblStatus.Text = "Wrong Username/Password";
                //Or show in messagebox usingScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Wrong Username/Password');", true);
                //Or write using Response.Write("Wrong Username/Password");
            }
        }
        catch (Exception ex)
        {
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Oops!! following error occured : " + ex.Message.ToString() + "');", true);
             Response.Write("Oops!! following error occured: " +ex.Message.ToString());
             //RequiredFieldValidator1.Text = "Invalid id or Password";
        }
        finally
        {
            dt.Clear();
            dt.Dispose();
            adp.Dispose();
        }     

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
       
        //Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
        //Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
        
        //Response.Cookies["UserName"].Value = user.Text.Trim();
        //Response.Cookies["Password"].Value = pass.Text.Trim();
        //Session.RemoveAll();
        //Session.Abandon();
      
    }
}