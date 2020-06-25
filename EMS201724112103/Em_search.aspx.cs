using EMS201724112103.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112103
{
    public partial class Em_search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["emid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (Session["emid"] != null)
            {
                string keyword = Session["emid"].ToString();
                Database1Entities3 db = new Database1Entities3();
                //使用LINQ方法
                var result = db.Employee.Where(m => m.emid.Contains(keyword));
                if (result.First().emname != null)
                {
                    Label1.Text = result.First().emname;
                }
            }
            else
            {
                Label1.Text = "未登录";
            }
        }
    }
}