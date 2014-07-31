using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
/// <summary>
/// Summary description for Email
/// </summary>
public class Email
{

	public Email()
	{
        
       
        
	}

    public void ownerMail(String email2)
    {

        {
            //Create Connection String And SQL Statement
            string strConnection = ConfigurationManager.ConnectionStrings["ResManagementConnectionString"].ConnectionString;
            string strSelect = "SELECT ResOId,ResOPass FROM ResturantOwnerDetails WHERE ResOEmail = @Email";

            SqlConnection connection = new SqlConnection(strConnection);
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandType = CommandType.Text;
            command.CommandText = strSelect;

            SqlParameter email = new SqlParameter("@Email", SqlDbType.VarChar, 50);
            email.Value = email2.Trim().ToString();
            command.Parameters.Add(email);

            //Create Dataset to store results and DataAdapter to fill Dataset 
            DataSet dsPwd = new DataSet();
            SqlDataAdapter dAdapter = new SqlDataAdapter(command);
            connection.Open();
            dAdapter.Fill(dsPwd);
            connection.Close();
            if (dsPwd.Tables[0].Rows.Count > 0)
            {
                MailMessage loginInfo = new MailMessage();
                loginInfo.To.Add(email2.ToString());
                loginInfo.From = new MailAddress("fanushcomicsbd@gmail.com");
                loginInfo.Subject = "Forgot Password Information";

                loginInfo.Body = "Username: " + dsPwd.Tables[0].Rows[0]["ResOId"] + "<br><br>Password: " + dsPwd.Tables[0].Rows[0]["ResOPass"] + "<br><br>";
                loginInfo.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Credentials = new System.Net.NetworkCredential("fanushcomicsbd@gmail.com", "mehedi1250");
                smtp.Send(loginInfo);
               // lblMessage.Text = "Password is sent to you email id,you can now <a href='Login.aspx'>Login</a>  ";
            }
            else
            {
               // lblMessage.Text = "Email Address Not Registered";
            }

        }
    }
}