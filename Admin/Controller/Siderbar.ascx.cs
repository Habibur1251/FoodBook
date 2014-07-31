using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controller_Siderbar : System.Web.UI.UserControl
{
    string username_c = (string)null;
    string pass_c = (string)null;
    protected void Page_Load(object sender, EventArgs e)
    {
        username_c = Request.Cookies["UserName"].Value;
        pass_c = Request.Cookies["Password"].Value;
        if (username_c == "habib")
        {
            //Dashboard.Text = "Home";
            //Dashboard.Enabled = false;
        }
    }
}