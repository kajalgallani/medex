using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;


namespace medexproject
{
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(" data source=localhost; database=medex; uid= sa; password= server@123");
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        SqlCommand cmd;
        DataSet ds = new DataSet();
        int serial = 1, expcount, stockcount, instockcount;
        public string variable1, variable2, variable3, variable4;            // for session
        public string expdate, qty;         // to notify 


        protected void Page_Load(object sender, EventArgs e)
        {
            variable1 = Session["SR"].ToString();


        }

        protected void Dashboard_GridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {


            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //dt.Clear();

                da = new SqlDataAdapter("SELECT * FROM MEDINFO WHERE SERIAL = " + serial + " ", con);
                da.Fill(dt);

                qty = dt.Rows[0][5].ToString();
                int x = Int32.Parse(e.Row.Cells[3].Text);

              if (x == 0)
                {
                    //out of stock
                    stockcount++;

                    e.Row.Cells[0].CssClass = "Orange";
                    e.Row.Cells[1].CssClass = "Orange";
                    e.Row.Cells[2].CssClass = "Orange";
                    e.Row.Cells[3].CssClass = "Orange";
                    e.Row.Cells[4].CssClass = "Orange";
                    e.Row.Cells[5].CssClass = "Orange";
                    e.Row.Cells[6].CssClass = "Orange";
                    
                   // e.Row.Font = System.Drawing.Color.White;

                }
                else
                {
                    //in stock and expired products
                    expdate = dt.Rows[0][9].ToString().Substring(0, 10);
                    instockcount++;
                    DateTime sdt = Convert.ToDateTime(e.Row.Cells[6].Text);
                    DateTime today = DateTime.Today;
                    TimeSpan ts = today - sdt;

                    if (ts.TotalDays > 0)
                    {
                        //expired 

                        e.Row.Cells[0].CssClass = "Red";
                        e.Row.Cells[1].CssClass = "Red";
                        e.Row.Cells[2].CssClass = "Red";
                        e.Row.Cells[3].CssClass = "Red";
                        e.Row.Cells[4].CssClass = "Red";
                        e.Row.Cells[5].CssClass = "Red";
                        e.Row.Cells[6].CssClass = "Red";
                        e.Row.ForeColor = System.Drawing.Color.White;
                        expcount++;
                    }

                }


                serial = serial + 1;

            }
            Session.Add("EC", expcount);
            variable2 = Session["EC"].ToString();
            Session.Add("SC", stockcount);
            variable3 = Session["SC"].ToString();
            Session.Add("IC",( instockcount-expcount));
            variable4 = Session["IC"].ToString();
        }

    }
}