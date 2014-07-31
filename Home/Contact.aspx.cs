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

public partial class Home_Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    
protected void submit_Click(object sender, EventArgs e)
{
    MailMessage loginInfo = new MailMessage();
    loginInfo.To.Add(email.ToString());
    loginInfo.From = new MailAddress("fanushcomicsbd@gmail.com");
    loginInfo.Subject = "Forgot Password Information";

    loginInfo.Body = message.ToString();
    loginInfo.IsBodyHtml = true;
    SmtpClient smtp = new SmtpClient();
    smtp.Host = "smtp.gmail.com";
    smtp.Port = 587;
    smtp.EnableSsl = true;
    smtp.Credentials = new System.Net.NetworkCredential("fanushcomicsbd@gmail.com", "mehedi1250");
    smtp.Send(loginInfo);
    //// lblMessage.Text = "Password is sent to you email id,you can now <a href='Login.aspx'>Login</a>  ";
}
}