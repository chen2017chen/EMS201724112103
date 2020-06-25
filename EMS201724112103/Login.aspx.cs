using EMS201724112103.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112103
{
    public partial class Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Database1Entities3 ef = new Database1Entities3();//数据库实体对象
            string id = Request["id"];
            string pwd = Request["pwd"];
            var obj = ef.Employee.Where(item => item.emid == id && item.empwd == pwd);
            if (obj.Count() != 0)
            {
                var emp = obj.First();
                Session["emid"] = emp.emid;
                var result = ef.Employee.Where(m => m.emid.Contains(id));
                Boolean na = true;
                if (result.First().emmanage == na)
                {
                    Response.Redirect("Default_admin.aspx");
                }
                else
                {
                    Response.Redirect("Default_employee.aspx");
                }
            }
        }
    }

    }