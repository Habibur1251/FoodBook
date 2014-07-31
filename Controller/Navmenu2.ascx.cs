using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controller_Navmenu : System.Web.UI.UserControl
{
    Int32 log;
    string username_c = (string)null;
    string pass_c = (string)null;
    // HttpCookie cookie = Request.Cookies["UserInfo"];
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Request.Cookies["Username"].Values == null)
        //    Response.Redirect("login.aspx");
        if(Request.Cookies["UserName"] == null )
        {
            Response.Redirect("../Owner/Login.aspx");
        }
        username_c = Request.Cookies["UserName"].Value;
        pass_c = Request.Cookies["Password"].Value;

        if ((username_c != null) && (pass_c != null))
        {

            log = 1;

        }

        else log = 0;


        if (log == 0 && Convert.ToInt32(HttpContext.Current.Session["userid"]) == 0)
            Response.Redirect("../Owner/Login.aspx");

        name.Text = username_c;

    }

}