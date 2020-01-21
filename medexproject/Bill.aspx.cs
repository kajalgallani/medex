using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace medexproject
{
    public partial class Bill : System.Web.UI.Page
    {
        public string variable1, variable2, variable3, variable4;
        protected void Page_Load(object sender, EventArgs e)
        {
            variable1 = Session["SR"].ToString();

            variable2 = Session["EC"].ToString();

            variable3 = Session["SC"].ToString();

            variable4 = Session["IC"].ToString();
        }
    }
}