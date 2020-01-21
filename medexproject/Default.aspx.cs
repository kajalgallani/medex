using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace medexproject
{
    public partial class Default : System.Web.UI.Page
    {
       
        SqlConnection con = new SqlConnection("data source=localhost; database=medex; uid=sa; password=server@123");
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
        }

        protected void SigninButton_Click(object sender, EventArgs e)
        {
            try
            {
                da = new SqlDataAdapter("SELECT * FROM logininfo WHERE UID='" + UidTextBox.Text + "' AND PASSWORD='" + PasswordTextBox.Text + "'", con);
                da.Fill(dt);
                string SERIAL = dt.Rows[0][0].ToString();
                string name = dt.Rows[0][1].ToString();
                
                Session.Add("SR", name);
                Response.Redirect("Dashboard.aspx");
            }
            catch (Exception ee)
            {
                Response.Write("<script>alert(' Invalid Login Details!!')</script>");
            }
           
        }
    }
}