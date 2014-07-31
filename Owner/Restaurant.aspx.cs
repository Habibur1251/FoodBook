using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class Admin_Restaurant : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ScriptResourceDefinition myScriptResDef = new ScriptResourceDefinition();
        myScriptResDef.Path = "~/Scripts/jquery-1.4.2.min.js";
        myScriptResDef.DebugPath = "~/Scripts/jquery-1.4.2.js";
        myScriptResDef.CdnPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.min.js";
        myScriptResDef.CdnDebugPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.js";
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery", null, myScriptResDef);
        
        
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        Add ob = new Add();
        //~/img/images.jpg                                                                                                        
        string filename = Path.GetFileName("~/img/"+FileUpload1.PostedFile.FileName);
        FileUpload1.SaveAs(Server.MapPath("~/img/"+filename));
        String id = Request.Cookies["UserName"].Value;
        int id2 = Convert.ToInt32(id);
        ob.registration(ResName.Text, id2, website.Text, Email.Text, contact.Text, description.Text, Area.Text, HouseNo.Text, RoadNo.Text, District.Text, Zip.Text,filename);
        ResName.Text = String.Empty; 
        //id2, 
        website.Text= String.Empty;
        Email.Text = String.Empty;
        contact.Text = String.Empty;
        description.Text = String.Empty;
        Area.Text = String.Empty;
        HouseNo.Text = String.Empty;
        RoadNo.Text = String.Empty;
        District.Text = String.Empty;
        Zip.Text = String.Empty;
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        ResName.Text = String.Empty;
        //id2, 
        website.Text = String.Empty;
        Email.Text = String.Empty;
        contact.Text = String.Empty;
        description.Text = String.Empty;
        Area.Text = String.Empty;
        HouseNo.Text = String.Empty;
        RoadNo.Text = String.Empty;
        District.Text = String.Empty;
        Zip.Text = String.Empty;
    }
}