using EMS201724112103.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112103
{
    public partial class Em_other : System.Web.UI.Page
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
            String emid = TextBox1.Text;
            String emname = TextBox2.Text;
            String empwd = TextBox3.Text;
            String emphone = TextBox4.Text;
            String emmanage = DropDownList1.SelectedValue.ToString();
            String deid = TextBox5.Text;

            String sqlconn =
                    "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\\Database1.mdf';";
            SqlConnection myConnection = new SqlConnection(sqlconn);
            //打开数据库连接
            myConnection.Open();
            //设置SelectCommand
            SqlCommand myCommand = new SqlCommand("select * from Employee", myConnection);
            //设置InsertCommand
            SqlCommand sqlInsertCommand1 = new SqlCommand();
            sqlInsertCommand1.Connection = myConnection;

            sqlInsertCommand1.CommandText = @"INSERT INTO Employee(emid,emname,empwd,emphone,emmanage,deid) 
                                         VALUES (@emid,  @emname,@empwd, @emphone,@emmanage,@deid); ";
            sqlInsertCommand1.Parameters.Add(new SqlParameter("@emid", SqlDbType.NChar, 15, "emid"));         
            sqlInsertCommand1.Parameters.Add(new SqlParameter("@emname", SqlDbType.NChar, 15, "emname"));
            sqlInsertCommand1.Parameters.Add(new SqlParameter("@empwd", SqlDbType.NChar, 15, "empwd"));
            sqlInsertCommand1.Parameters.Add(new SqlParameter("@emphone", SqlDbType.NChar, 15, "emphone"));
            sqlInsertCommand1.Parameters.Add(new SqlParameter("@emmanage", SqlDbType.Bit, 15, "emmanage"));
            sqlInsertCommand1.Parameters.Add(new SqlParameter("@deid", SqlDbType.NChar, 10, "deid"));

            SqlDataAdapter Adapter = new SqlDataAdapter();
            Adapter.SelectCommand = myCommand;
            Adapter.InsertCommand = sqlInsertCommand1;
            //填充至数据集
            DataSet myDs = new DataSet();
            Adapter.Fill(myDs);
            //获取DataTable
            DataTable myTable = myDs.Tables[0];
            //插入1笔数据,第2次运行时要改一下编号,免主键重复
            DataRow myRow = myTable.NewRow();
            //为新行赋值
            myRow["emid"] = emid;
             myRow["emname"] = emname;
             myRow["empwd"] = empwd;
            myRow["emphone"] = emphone;
            myRow["emmanage"] = emmanage;
            myRow["deid"] = deid;

            //添加到Rows集合中
            myTable.Rows.Add(myRow);
            //提交数据到数据库
            Adapter.Update(myDs);
            //关闭数据库
            myDs.Clear();
            myConnection.Close();
            //以上完成数据插入
            Response.Redirect("Em_other.aspx");

        }
    }
}