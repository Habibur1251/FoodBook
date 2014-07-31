using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Profile : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        
            //imgpath.ImageUrl = Response.Cookies["imagepath"].Value;
            
            //Label2.Text = Response.Cookies["imagepath"].Value;
        //Response.Write(Request.Cookies["imagepath"].Value);
        //label1.Text = Request.Cookies["imagepath"].Value;
      
        
    }


    protected void logout_Unload(object sender, EventArgs e)
    {
        //Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
        //Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
    }
    //public string value()
    //{
    //    String sn = Request.Cookies["UserName"].Value;

    //}
}