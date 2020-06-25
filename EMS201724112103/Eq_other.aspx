<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Eq_other.aspx.cs" Inherits="EMS201724112103.Eq_other" %>

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
            font-family: Arial;
            font-size: large;
            color: #00FF00;
        }
        .auto-style2 {
            font-size: large;
            color: #00FF00;
        }
        .auto-style3 {
            font-size: large;
        }
        .table-style {
            width: 100%;
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style4 {
            width: 373px;
            height: 162px;
        }
        .auto-style5 {
            width: 218px;
            height: 185px;
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
                     <li class="style"><a href="Default_admin.aspx">首页</a></li>
                     <li class="style">
                             <a href="#"  data-toggle="dropdown" >
                                设备 <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu"   style="min-width:100%;">
                                <li><a href="Eq_search_admin.aspx">设备查询</a></li>
                                <li><a href="Eq_other.aspx">其他操作</a></li>                                
                            </ul>
                        </li>
                    <li class="style">
                            <a href="#"  data-toggle="dropdown" >
                                部门 <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu"   style="min-width:100%;">
                                <li><a href="De_search_admin.aspx">部门查询</a></li>
                                <li><a href="De_other.aspx">部门修改</a></li>
                                <li><a href="Em_search_admin.aspx">员工信息查询</a></li>
                                <li><a href="Em_other.aspx">员工信息其他操作</a></li>                                
                            </ul>
                        </li>
                    <li class="style"><a href="Information_admin.aspx">个人信息</a></li>
                    <li class="style"><a href=" "></a></li>
                   
                    <li class="style" style="float:right">管理员:
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <a href="Login.aspx">注销</a></li>
                </ul> 
            </div>
        </nav>
        <br />
        <span class="auto-style1">编号：</span><asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <span class="auto-style1">设备名字：</span><asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <span class="auto-style1">设备类型：</span><asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <span class="auto-style1">照片：</span><asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style1"></asp:TextBox>
        <span class="auto-style1">
        <br />
        <asp:Label ID="Label2" runat="server" Text="价格："></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style2"></asp:TextBox>
        <br />
        购入日期：<asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style2" Width="164px"></asp:TextBox>
        </span>
        <br class="auto-style1" />
        <span class="auto-style1">所在地点</span>：<asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style2"></asp:TextBox>
        <br class="auto-style2" />
        <span class="auto-style2">设备管理员：<asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style2"></asp:TextBox>
        </span>
        <br class="auto-style2" />
        <span class="auto-style2">管理员所属编号：</span><asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style3"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="添加设备" OnClick="Button1_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Equipment] WHERE [eqid] = @eqid" InsertCommand="INSERT INTO [Equipment] ([eqid], [eqname], [eqstandard], [eqphoto], [eqprice], [eqdate], [eqlocation], [eqmanage], [emid]) VALUES (@eqid, @eqname, @eqstandard, @eqphoto, @eqprice, @eqdate, @eqlocation, @eqmanage, @emid)" SelectCommand="SELECT * FROM [Equipment]" UpdateCommand="UPDATE [Equipment] SET [eqname] = @eqname, [eqstandard] = @eqstandard, [eqphoto] = @eqphoto, [eqprice] = @eqprice, [eqdate] = @eqdate, [eqlocation] = @eqlocation, [eqmanage] = @eqmanage, [emid] = @emid WHERE [eqid] = @eqid">
            <DeleteParameters>
                <asp:Parameter Name="eqid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="eqid" Type="String" />
                <asp:Parameter Name="eqname" Type="String" />
                <asp:Parameter Name="eqstandard" Type="String" />
                <asp:Parameter Name="eqphoto" Type="String" />
                <asp:Parameter Name="eqprice" Type="String" />
                <asp:Parameter Name="eqdate" Type="String" />
                <asp:Parameter Name="eqlocation" Type="String" />
                <asp:Parameter Name="eqmanage" Type="String" />
                <asp:Parameter Name="emid" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="eqname" Type="String" />
                <asp:Parameter Name="eqstandard" Type="String" />
                <asp:Parameter Name="eqphoto" Type="String" />
                <asp:Parameter Name="eqprice" Type="String" />
                <asp:Parameter Name="eqdate" Type="String" />
                <asp:Parameter Name="eqlocation" Type="String" />
                <asp:Parameter Name="eqmanage" Type="String" />
                <asp:Parameter Name="emid" Type="String" />
                <asp:Parameter Name="eqid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="eqid" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="eqid" HeaderText="设备编号" ReadOnly="True" SortExpression="eqid" />
                <asp:BoundField DataField="eqname" HeaderText="设备名字" SortExpression="eqname" />               
                <asp:BoundField DataField="eqstandard" HeaderText="类型" SortExpression="eqstandard" />
                <asp:BoundField DataField="eqphoto" HeaderText="照片" SortExpression="eqphoto" />
                <asp:BoundField DataField="eqprice" HeaderText="价格" SortExpression="eqprice" />
                <asp:BoundField DataField="eqdate" HeaderText="购入日期" SortExpression="eqdate" />
                <asp:BoundField DataField="eqlocation" HeaderText="所在地点" SortExpression="eqlocation" />
                <asp:BoundField DataField="eqmanage" HeaderText="设备管理员" SortExpression="eqmanage" />
                <asp:BoundField DataField="emid" HeaderText="管理员所属编号" SortExpression="emid" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <br />
               <table class="table-style">
            <tr align="center">
                <td>&nbsp;&nbsp;<img class="auto-style2" src="images/电脑.png" /><br />
                    电脑</td>
                <td>
                    <img class="auto-style3" src="images/路由器.png" /><br />
                    路由器</td>
            </tr>
            <tr align="center">
                <td>
                    <img class="auto-style4" src="images/键盘.png" /><br />
                    键盘</td>
                <td>
                    <img class="auto-style5" src="images/鼠标.png" /><br />
                    鼠标</td>
            </tr>
        </table>
    </div>
    <script src="bootstrap/jquery/jquery-1.11.0.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    </form>
</body>
</html>