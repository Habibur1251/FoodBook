using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for WebUser
/// </summary>
public class WebUser
{
	public WebUser()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static DataSet IsUserNameExist(string UserName)
    {
        DataSet dataSet = new DataSet();
        string conn = ConfigurationManager.ConnectionStrings["ResManagementConnectionString"].ConnectionString;
        using (SqlConnection connection = new SqlConnection(conn))
        {

            string sql = "SELECT userid FROM usertable WHERE userid = @userid";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.Add("@userid", SqlDbType.VarChar).Value = UserName;
            command.CommandType = CommandType.Text;

            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
            dataAdapter.Fill(dataSet, "userid");

        }

        return dataSet;
    }

}