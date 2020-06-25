using EMS201724112103.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112103
{
    public partial class Information : System.Web.UI.Page
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
                    Label2.Text = result.First().emid;
                    Label1.Text = result.First().emname;
                    Label3.Text = result.First().emname;
                    Label4.Text = result.First().emphone;
                    string dekey = result.First().deid;                
                    var result1 = db.Department.Where(m => m.deid.Contains(dekey));
                    if (result1.First().dename != null)
                    {
                        Label5.Text = result1.First().dename;
                    }

                }
            }
            else
            {
                Label1.Text = "未登录";
            }
        }
    }
}