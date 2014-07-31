using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["UserName"] == null)
        {
            log.Visible = true;
            log.Text = "You have to login before commenting on the post";
            msg.Visible = false;
            submit.Visible = false;
            rating.Visible = false;

        }
        else
        {
            log.Text = "Welcome&nbsp" +Request.Cookies["UserName"].Value;
            msg.Visible = true;
            submit.Visible = true;
            rating.Visible = true;
        }
        if (IsPostBack)
        {
            msg.Text = String.Empty;
        }


    }
    protected void submit_Click(object sender, EventArgs e)
    {
        
        String uid = Request.Cookies["UserName"].Value;
        String Comm = msg.Text;
        int rate = 1;
        int resid = Convert.ToInt32(Request.QueryString["resid"]);
        Add obj = new Add();
        obj.comment(Comm,rate, resid, uid);
    }
}