using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112103
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["CurrentValue"] == null)
            {
                Response.Write("Session[\"CurrentValue\"]不存在");
            }
            else
            {
                String str = Session["CurrentValue"].ToString();
                Label1.Text = str;
            }

        }
    }
}