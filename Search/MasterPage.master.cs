using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void submit_Click(object sender, EventArgs e)
    {
       
            Response.Redirect("Default.aspx?resname=" + resname.Text);
  
    }
    protected void food_Click(object sender, EventArgs e)
    {
        Int32 pr = Convert.ToInt32(price1.Text);
        //we.Text = price1.Text;
        //Int32 p1 = Convert.ToInt32(price1.Text);
        //Int32 p2 = Convert.ToInt32(price2.Text);
        Response.Redirect("Default.aspx?pr=" + pr);  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx?fname=" + fname.Text);
    }
}
