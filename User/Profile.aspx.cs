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
        //if (Request.Cookies["imagepath"] != null)
        //imgpath.ImageUrl = Request.Cookies["imagepath"].Value;
        DetailsView1.Visible = false;

        //DetailsView1.ChangeMode(DetailsViewMode.Edit);
        if (IsPostBack)
        {
        //DetailsView1.ChangeMode(DetailsViewMode.Edit);
            
        }
        
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        DetailsView1.ChangeMode(DetailsViewMode.Edit);
        DetailsView1.Visible = true;
    }
}