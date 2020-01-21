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

    public partial class Defualt : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(" data source=localhost; database=medex; uid= sa; password= server@123");
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        string fullname;
        public string variable1, variable2, variable3, variable4;
        protected void Page_Load(object sender, EventArgs e)
        {
            variable1 = Session["SR"].ToString();

            variable2 = Session["EC"].ToString();

            variable3 = Session["SC"].ToString();

            variable4 = Session["IC"].ToString();
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            fullname = Drugtype_DropDownList.SelectedItem.Text.ToUpper() + " " + MNameTextBox.Text.ToUpper() + " " + strength_TextBox.Text.ToUpper();

            try
            {
                da = new SqlDataAdapter("SELECT SERIAL FROM MEDINFO WHERE FULLNAME='" + fullname + "' ", con);
                da.Fill(dt);
                string SERIAL = dt.Rows[0][0].ToString();
                Response.Write("<script>alert('Medicine Already Exist')</script>");
            }

            catch (Exception EE)
            {
                int md, mm, my;
                int ed, em, ey;

                mm = int.Parse(mdate.Text.Split('/')[0]);
                md = int.Parse(mdate.Text.Split('/')[1]);
                my = int.Parse(mdate.Text.Split('/')[2]);

                string mfg = my + "-" + mm + "-" + md;


                em = int.Parse(edate.Text.Split('/')[0]);
                ed = int.Parse(edate.Text.Split('/')[1]);
                ey = int.Parse(edate.Text.Split('/')[2]);

                string exp = ey + "-" + em + "-" + ed;

                //fullname = MNameTextBox.Text + " " + strength_TextBox.Text + " " + Drugtype_DropDownList.SelectedItem.Text;

                fullname.ToUpper();
                con.Open();
                cmd = new SqlCommand("insert into medinfo values('" + Drugtype_DropDownList.SelectedItem.Text.ToUpper().ToString() + "','" + MNameTextBox.Text + "','" + strength_TextBox.Text + "','" + fullname + "'," + Quantity.Text + ",'" + MRP.Text + "','" + Batchno.Text + "','" + mfg.ToString() + "','" + exp + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Dashboard.aspx");
            }

        }

        protected void DiscardButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }


    }
}