<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Em_search.aspx.cs" Inherits="EMS201724112103.Em_search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .nav-logo {
            float: left;
            height: 40px;
            margin-top: 5px;
            overflow: hidden;
        }

            .nav-logo a {
                margin: 0;
                padding: 0;
            }
            ul{
            width: 100%;
            height: 70px;   
        }

        .style {
            font-family: 黑体;
            font-size: 20px;
            font-weight:bold;
        }
        .nav-justified{
            border-style:solid;
        }
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body background="images\background.jpg" style="background-repeat:no-repeat ;background-size:100% 100%;background-attachment: fixed;">
    <form id="form1" runat="server">
    <div class="container">
        <nav class="navbar navbar-default" role="navigation">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false">
                <span class="sr-only">汉堡按钮</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <div class="collapse navbar-collapse buju" id="navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="style"><a href="Default_employee.aspx">首页</a></li>
                    <li class="style"><a href=" ">设备</a></li>
                    <li class="style"><a href="Department_employee.aspx">部门</a></li>
                    <li class="style"><a href="Information_employee.aspx">个人信息</a></li>
                    <li class="style"><a href=" "></a></li>
                   
                    <li class="style" style="float:right">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <a href="Login.aspx">注销</a></li>
                </ul> 
            </div>
        </nav>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
        <br />
        <table class="auto-style1">
            <tr>
                <td>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="emid" DataSourceID="SqlDataSource1" CellPadding="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" >
            <Columns>
                <asp:BoundField DataField="emid" HeaderText="员工编号" ReadOnly="True" SortExpression="emid" />
                <asp:BoundField DataField="emname" HeaderText="姓名" SortExpression="emname" />
                <asp:BoundField DataField="emphone" HeaderText="电话" SortExpression="emphone" />
                <asp:CheckBoxField DataField="emmanage" HeaderText="是否为管理员" SortExpression="emmanage" />
                <asp:BoundField DataField="deid" HeaderText="所属部门" SortExpression="deid" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
                </td>
                <td>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="deid" DataSourceID="SqlDataSource2" CellPadding="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="deid" HeaderText="部门编号" ReadOnly="True" SortExpression="deid" />
                <asp:BoundField DataField="dename" HeaderText="名字" SortExpression="dename" />
                <asp:BoundField DataField="demanage" HeaderText="管理员" SortExpression="demanage" />               
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
    <script src="bootstrap/jquery/jquery-1.11.0.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
