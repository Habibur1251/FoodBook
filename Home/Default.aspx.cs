using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    
{
        //String query = searchbox.Text;
        if (IsPostBack)
        {
            searchtxt.Text = String.Empty;
        }
        
    }
    protected void search_Click(object sender, EventArgs e)
    {
        //String query = searchbox.Text;
        //Response.Redirect("../RestaurantPage.aspx?q=" + query);
        //searchbox.Text = String.Empty;
        String query = searchtxt.Text;
        Response.Redirect("../RestaurantPage.aspx?q="+ query);
    }
}