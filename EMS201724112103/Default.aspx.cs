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
        //连接数据库字符串
        string sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;" +
        "AttachDbFilename='|DataDirectory|\\Database1.mdf';";
        HttpCookie Cookies = new HttpCookie("W1");
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(sqlconn);
            conn.Open();
            string id = TextBox1.Text;
            string password = TextBox2.Text;
            SqlCommand con = new SqlCommand("select * from Employee where emid=" + id + " and empwd=" + password + "", conn);
            SqlDataReader myReader;
            myReader = con.ExecuteReader();


            if (myReader.Read())
            {
                String temp = Convert.ToString(myReader["emmanage"].ToString());
                String temp1 = Convert.ToString(myReader["emname"].ToString());
                Response.Write(temp);
                Response.Write(temp1);
                if (temp == "True")
                {                   
                    Session["CurrentValue"] = temp1;            
                    Response.Redirect("Homepage.aspx");
                }

                else if (temp == "False")
                {
                    Session["CurrentValue"] = temp1;
                    Response.Redirect("Homepage.aspx");
                    Response.Redirect("employee.aspx");
                }
            }
            myReader.Close();
            conn.Close();
            Label1.Text = "账号或者密码错误";
        }


    }
}