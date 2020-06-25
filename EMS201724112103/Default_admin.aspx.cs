using EMS201724112103.Models;
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
            if (Session["emid"] != null)
            {
                string idkey = Session["emid"].ToString();
                Database1Entities3 db = new Database1Entities3();
                //使用LINQ方法
                var result = db.Employee.Where(m => m.emid.Contains(idkey));
                if (result.First().emname != null)
                {
                    //Session["emname"] = result.First().emname;
                    Label1.Text = result.First().emname;
                    Label4.Text = result.First().emid;
                    Label2.Text = result.First().emname;
                    string dekey = result.First().deid;
                    var result1 = db.Department.Where(m => m.deid.Contains(dekey));
                    if (result1.First().dename != null)
                    {
                        Label3.Text = result1.First().dename;
                    }
                }
            }
            else
            {

                Label1.Text = "未登录";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Em_search_admin.aspx");
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Eq_search_admin.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("De_search_admin.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Em_other.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Em_other.aspx");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Em_other.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("De_other.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Eq_other.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Eq_other.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Eq_other.aspx");
        }
    }
}