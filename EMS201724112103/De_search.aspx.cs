using EMS201724112103.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112103
{
    public partial class De_search : System.Web.UI.Page
    {
        Database1Entities3 db = new Database1Entities3();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["emid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (Session["emid"] != null)
            {
                string keyword = Session["emid"].ToString();
              
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            //根据id查询
            try
            {
                String id = TextBox1.Text;
                var valueQuery = from v in db.Department
                                 join v2 in db.Employee on v.demanageid equals v2.emid
                                 where v.deid == id
                                 select new
                                 {
                                     编号 = v.deid,
                                     名称 = v.dename,
                                     部门管理人编号 = v.demanageid,
                                     部门管理人姓名 = v.demanage
                                 };
                GridView1.DataSource = valueQuery.ToList();
                GridView1.DataBind();
            }

            catch (Exception)
            {
                Label2.Text = "未查询到结果";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            //根据名称查询
            try
            {
                String name = TextBox2.Text;
                var valueQuery = from v in db.Department
                                 join v2 in db.Employee on v.demanageid equals v2.emid
                                 where v.dename.Contains(name)
                                 select new
                                 {
                                     编号 = v.deid,
                                     名称 = v.dename,
                                     部门管理人编号 = v.demanageid,
                                     部门管理人姓名 = v2.emname
                                 };
                GridView1.DataSource = valueQuery.ToList();
                GridView1.DataBind();
            }
            catch (Exception)
            {
                Label2.Text = "未查询到结果";
            }
        
    }
    }
}