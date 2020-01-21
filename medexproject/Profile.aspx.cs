using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace medexproject
{

    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(" data source=localhost; database=medex; uid= sa; password= server@123");
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        SqlCommand cmd;
        DataSet ds = new DataSet();
        public string variable1;
        protected void Page_Load(object sender, EventArgs e)
        {
            variable1 = Session["SR"].ToString();

        }

        protected void discard_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }

        protected void save_Button_Click(object sender, EventArgs e)
        {
            try
            {
                da = new SqlDataAdapter("SELECT serial FROM logininfo WHERE PASSWORD='" + Currentpassword_TextBox.Text + "'", con);
                da.Fill(dt);
                string SERIAL = dt.Rows[0][0].ToString();


            }
            catch (Exception ee)
            {
                Response.Write("<script>alert('Current password does not match !!')</script>");
            }
            con.Open();
            cmd = new SqlCommand("UPDATE logininfo SET password='" + confirmpassword_TextBox.Text + "' WHERE password='" + Currentpassword_TextBox.Text + "' ", con);
            cmd.ExecuteNonQuery();
            con.Close();

        }
    }
}