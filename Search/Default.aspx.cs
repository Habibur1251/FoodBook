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

public partial class Search_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ResManagementConnectionString"].ConnectionString);
        all.Visible = true;
        resnamewise.Visible = false;
        Areawise.Visible = false;
        foodnamewise.Visible = false;
        pricewise.Visible = false;
        catwise.Visible = false;
        if (Request.QueryString["cat"] != null)
        {
            catwise.Visible = true;
            all.Visible = false;
        }
        if (Request.QueryString["area"] != null)
        {
            Areawise.Visible = true;
            all.Visible = false;
        }
        if (Request.QueryString["resname"] != null)
        {
            resnamewise.Visible = true;
            all.Visible = false;
        }
        if (Request.QueryString["fname"] != null)
        {
            foodnamewise.Visible = true;
            all.Visible = false;
        }
        if (Request.QueryString["pr"] != null)
        {
            pricewise.Visible = true;
            all.Visible = false;
        }
        
      
    }
}