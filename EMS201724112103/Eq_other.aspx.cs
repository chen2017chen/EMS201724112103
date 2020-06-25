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
    public partial class Eq_other : System.Web.UI.Page
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
            String eqid = TextBox1.Text;
            String eqname = TextBox2.Text;
            String eqstandard = TextBox3.Text;
            String eqphoto= TextBox4.Text;
            String eqprice =TextBox5.Text;
            String eqdate = TextBox6.Text;
            String eqlocation = TextBox7.Text;
            String eqmanage = TextBox8.Text;
            String emid = TextBox9.Text;
            String sqlconn =
                    "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\\Database1.mdf';";
            SqlConnection myConnection = new SqlConnection(sqlconn);
            //打开数据库连接
            myConnection.Open();
            //设置SelectCommand
            SqlCommand myCommand = new SqlCommand("select * from Equipment", myConnection);
            //设置InsertCommand
            SqlCommand sqlInsertCommand1 = new SqlCommand();
            sqlInsertCommand1.Connection = myConnection;

            sqlInsertCommand1.CommandText = @"INSERT INTO Equipment(eqid,eqname,eqstandard,eqphoto,eqprice,eqdate,eqlocation,eqmanage,emid) 
                                         VALUES (@eqid,@eqname,@eqstandard,@eqphoto,@eqprice,@eqdate,@eqlocation,@eqmanage,@emid); ";
            sqlInsertCommand1.Parameters.Add(new SqlParameter("@eqid", SqlDbType.NChar, 15, "eqid"));
            sqlInsertCommand1.Parameters.Add(new SqlParameter("@eqname", SqlDbType.NChar, 15, "eqname"));
            sqlInsertCommand1.Parameters.Add(new SqlParameter("@eqstandard", SqlDbType.NChar, 15, "eqstandard"));
            sqlInsertCommand1.Parameters.Add(new SqlParameter("@eqphoto", SqlDbType.NChar, 15, "eqphoto"));
            sqlInsertCommand1.Parameters.Add(new SqlParameter("@eqprice", SqlDbType.NChar, 15, "eqprice"));
            sqlInsertCommand1.Parameters.Add(new SqlParameter("@eqdate", SqlDbType.NChar, 10, "eqdate"));
            sqlInsertCommand1.Parameters.Add(new SqlParameter("@eqlocation", SqlDbType.NChar, 15, "eqlocation"));
            sqlInsertCommand1.Parameters.Add(new SqlParameter("@eqmanage", SqlDbType.NChar, 15, "eqmanage"));
            sqlInsertCommand1.Parameters.Add(new SqlParameter("@emid", SqlDbType.NChar, 10, "emid"));
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
            myRow["eqid"] = eqid;
            myRow["eqname"] = eqname;
            myRow["eqstandard"] = eqstandard;
            myRow["eqphoto"] = eqphoto;
            myRow["eqprice"] = eqprice;
            myRow["eqdate"] = eqdate;
            myRow["eqlocation"] = eqlocation;
            myRow["eqmanage"] = eqmanage;
            myRow["emid"] = emid;
            //添加到Rows集合中
            myTable.Rows.Add(myRow);
            //提交数据到数据库
            Adapter.Update(myDs);
            //关闭数据库
            myDs.Clear();
            myConnection.Close();
            //以上完成数据插入
            Response.Redirect("Eq_other.aspx");
        }
    }
}