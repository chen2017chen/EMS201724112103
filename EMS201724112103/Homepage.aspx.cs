using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112103
{
     
    public partial class Homepage : System.Web.UI.Page
    {
 
        protected void Page_Load(object sender, EventArgs e)
        {   
            String str = Session["CurrentValue"].ToString();          
             Label1.Text = str;
            
           
        }
    }
}