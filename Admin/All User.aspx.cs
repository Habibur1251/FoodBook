using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Collections;
using System.IO.Compression;  
using System.Text.RegularExpressions;

public partial class Admin_All_User : System.Web.UI.Page
{
    private string SearchString = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string HighlightText(string InputTxt)
    {
        string Search_Str = txtSearch.Text;
        // Setup the regular expression and add the Or operator.
        Regex RegExp = new Regex(Search_Str.Replace(" ", "|").Trim(), RegexOptions.IgnoreCase);
        // Highlight keywords by calling the
        //delegate each time a keyword is found.
        return RegExp.Replace(InputTxt, new MatchEvaluator(ReplaceKeyWords));
    }

    public string ReplaceKeyWords(Match m)
    {
        return ("<span class=highlight>" + m.Value + "</span>");
    }
    //protected void btnSearch_Click(object sender, ImageClickEventArgs e)
    //{
    //    //  Set the value of the SearchString so it gets
        
    //}
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SearchString = txtSearch.Text;
        SearchString = TextBox7.Text;
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtSearch.Text = "";
        TextBox7.Text = "";
        SearchString = "";
        GridView1.DataBind();
        GridView2.DataBind();
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        popup.Show();
        //DetailsView2.DataKeyNames = GridView3.DataKeyNames;
        
    }
}