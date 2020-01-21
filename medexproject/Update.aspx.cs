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

    public partial class Update : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(" data source=localhost; database=medex; uid= sa; password= server@123");
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        SqlCommand cmd;
        DataSet ds = new DataSet();
        public string fullname, mdt, edt;
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

                da = new SqlDataAdapter("SELECT SERIAL, FULLNAME FROM MEDINFO WHERE MNAME LIKE @MNAME + '%' ", con);
                da.SelectCommand.Parameters.Add(new SqlParameter("@MNAME", Search_TextBox.Text));
                da.Fill(dt);
                Update_GridView.DataSource = dt;
                Update_GridView.DataBind();
            }
            catch (Exception ee)
            {
                Response.Write("<script>alert('Medicine Does Not Exist')</script>");
            }
        }
        public string serial_no;
        protected void Update_GridView_SelectedIndexChanged(object sender, EventArgs e)
        {

            serial_no = Update_GridView.SelectedValue.ToString();

            da = new SqlDataAdapter("SELECT * FROM MEDINFO WHERE SERIAL='" + serial_no + "'", con);
            da.Fill(dt);
            serialLabel.Text = dt.Rows[0][0].ToString();
            Drugtype_DropDownList.SelectedItem.Text = dt.Rows[0][1].ToString();
            MNameTextBox.Text = dt.Rows[0][2].ToString();
            strength_TextBox.Text = dt.Rows[0][3].ToString();
            Quantity_TextBox.Text = dt.Rows[0][5].ToString();
            MRP_TextBox.Text = dt.Rows[0][6].ToString();
            Batchno.Text = dt.Rows[0][7].ToString();
            mdt = dt.Rows[0][8].ToString().Substring(0, 10);
            edt = dt.Rows[0][9].ToString().Substring(0, 10);

            
            int md, mm, my;
            string md1,mm1;
            md = int.Parse(mdt.Split('-')[0]);
            mm = int.Parse(mdt.Split('-')[1]);
            my = int.Parse(mdt.Split('-')[2]);

            if (md < 10 )
            {
                md1 = string.Format("{0:00}", md);
               
                if (mm < 10)
                {
                    mm1 = string.Format("{0:00}", mm);
                    string mfg = md1 + "/" + mm1 + "/" + my;
                    mdate.Text = mfg;
                }
                else
                {
                    string mfg = md1 + "/" + mm + "/" + my;
                    mdate.Text = mfg;
                }
                
            }
            else
            {
                mm1 = string.Format("{0:00}", mm);
                string mfg = md + "/" + mm1 + "/" + my;
                mdate.Text = mfg;
            }




            int ed, em, ey;
            string ed1, em1;
            ed = int.Parse(edt.Split('-')[0]);
            em = int.Parse(edt.Split('-')[1]);
            ey = int.Parse(edt.Split('-')[2]);

            if (ed < 10)
            {
                ed1 = string.Format("{0:00}", ed);

                if (mm < 10)
                {
                    em1 = string.Format("{0:00}", em);
                    string exp = ed1 + "/" + em1 + "/" + ey;
                    edate.Text = exp;
                }
                else
                {
                    string exp = ed1 + "/" + em + "/" + ey;
                    edate.Text = exp;
                }

            }
            else
            {
                em1 = string.Format("{0:00}", em);
                string exp = ed + "/" + em1 + "/" + ey;
                edate.Text = exp;
            }

            

        }



        protected void DiscardButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            int md, mm, my;
            int ed, em, ey;

            md = int.Parse(mdate.Text.Split('/')[0]);
            mm = int.Parse(mdate.Text.Split('/')[1]);
            my = int.Parse(mdate.Text.Split('/')[2]);

            string mfg = my + "-" + mm + "-" + md;


            ed = int.Parse(edate.Text.Split('/')[0]);
            em = int.Parse(edate.Text.Split('/')[1]);
            ey = int.Parse(edate.Text.Split('/')[2]);

            string exp = ey + "-" + em + "-" + ed;

            fullname = Drugtype_DropDownList.SelectedItem.Text.ToUpper() + " " + MNameTextBox.Text.ToUpper() + " " + strength_TextBox.Text.ToUpper();
            fullname.ToUpper();
            con.Open();
            cmd = new SqlCommand("update medinfo set drugtype= '" + Drugtype_DropDownList.SelectedItem.Text.ToUpper() + "', MNAME='" + MNameTextBox.Text + "', STRENGTH='" + strength_TextBox.Text + "',FULLNAME='" + fullname + "', QUANTITY=" + Quantity_TextBox.Text + ", MRP='" + MRP_TextBox.Text + "', BATCHNO='" + Batchno.Text + "',  MFG='" + mfg + "', EXP='" + exp + "' where serial='" + serialLabel.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}

