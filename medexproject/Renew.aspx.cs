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
    public partial class Renew : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(" data source=localhost; database=medex; uid= sa; password= server@123");
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        SqlCommand cmd;
        DataSet ds = new DataSet();
        string fullname, serial;
        public string variable1, variable2, variable3, variable4;
        protected void Page_Load(object sender, EventArgs e)
        {
            variable1 = Session["SR"].ToString();

            variable2 = Session["EC"].ToString();

            variable3 = Session["SC"].ToString();

            variable4 = Session["IC"].ToString();

        }

        protected void Search_Button_Click(object sender, EventArgs e)
        {
            Search_TextBox.Text = Search_TextBox.Text.ToUpper();
            try
            {
                //da = new SqlDataAdapter("SELECT SERIAL, FULLNAME FROM MEDINFO WHERE MNAME like '" + Search_TextBox.Text + "' '%' ", con);

                da = new SqlDataAdapter("SELECT SERIAL, FULLNAME FROM MEDINFO WHERE MNAME LIKE @MNAME + '%' ", con);
                da.SelectCommand.Parameters.Add(new SqlParameter("@MNAME", Search_TextBox.Text));


                da.Fill(dt);
                Update_GridView.DataSource = dt;
                Update_GridView.DataBind();
            }
            catch (Exception ee)
            {

            }
        }
        public string serial_no;

        protected void Update_GridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            serial_no = Update_GridView.SelectedValue.ToString();

            da = new SqlDataAdapter("SELECT * FROM MEDINFO WHERE SERIAL='" + serial_no + "'", con);
            da.Fill(dt);
            fullname_label.Text = dt.Rows[0][4].ToString();
            serialLabel.Text = dt.Rows[0][0].ToString();

            //Quantity_TextBox.Text = dt.Rows[0][5].ToString();
            //MRP_TextBox.Text = dt.Rows[0][6].ToString();
            //Batchno.Text = dt.Rows[0][7].ToString();
            //mdate.Text = dt.Rows[0][8].ToString().Substring(0, 10);
            //edate.Text = dt.Rows[0][9].ToString().Substring(0, 10);
        }

        protected void RenewButton_Click(object sender, EventArgs e)
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
            con.Open();
            cmd = new SqlCommand("update medinfo set QUANTITY=" + Quantity_TextBox.Text + ", MRP='" + MRP_TextBox.Text + "', BATCHNO='" + Batchno.Text + "', MFG='" + mfg + "', EXP='" + exp + "' where serial='" + serialLabel.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void DiscardButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }




    }
}