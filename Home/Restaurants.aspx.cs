using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home_Restaurants : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ListView2.Visible = false;
        if (Request.QueryString["cat"] != null)
        {

            ListView2.Visible = true;
            ListView1.Visible = false;
        }

    }
}