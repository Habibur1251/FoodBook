using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ScriptResourceDefinition myScriptResDef = new ScriptResourceDefinition();
        myScriptResDef.Path = "~/Scripts/jquery-1.4.2.min.js";
        myScriptResDef.DebugPath = "~/Scripts/jquery-1.4.2.js";
        myScriptResDef.CdnPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.min.js";
        myScriptResDef.CdnDebugPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.js";
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery", null, myScriptResDef);

        Label2.Text = "";
    }

    //string strConnection;
    //SqlCommand com = new SqlCommand();
    //SqlConnection conn = new SqlConnection();

    protected void submit_button_Click(object sender, EventArgs e)
    {
       string sn;
       sn= DropDownList1.SelectedValue;
      // fname.Text = sn;
        Add obj = new Add();
        obj.registration(fname.Text, userid.Text, password2.Text, email.Text, datepicker.Text, sn, contact.Text);
        fname.Text="";
        userid.Text="";
        password2.Text="";
        email.Text="";
        datepicker.Text="";
        DropDownList1.SelectedValue = "Others";
        contact.Text = "";    
    
    }





    protected void fname_TextChanged(object sender, EventArgs e)
    {
        //RequiredFieldValidator1.Text = "Enter your first name";
    }

    protected void cancel_button_Click(object sender, EventArgs e)
    {
        fname.Text = "";
        userid.Text = "";
        password2.Text = "";
        email.Text = "";
        datepicker.Text = "";
        DropDownList1.SelectedValue = "Others";
        contact.Text = ""; 
    }
    protected void userid_TextChanged(object sender, EventArgs e)
    {

        string userid2 = null;
        userid2=userid.Text;

        string UserNameDb = null;

        DataSet dataSet1 = WebUser.IsUserNameExist(userid2);

        foreach (DataRow row in dataSet1.Tables["userid"].Rows)
        {
            UserNameDb = string.Format("{0}", row["userid"]);
        }

        if (userid2 != "")
        {
            if (UserNameDb != null)
            {
                Label2.Text = "User Name is already taken";
                Label2.ForeColor = System.Drawing.Color.Red;
            }

            else
            {
                Label2.Text = "User Name is Available";
                Label2.ForeColor = System.Drawing.Color.Green;
            }


        }
       
            
    }
}