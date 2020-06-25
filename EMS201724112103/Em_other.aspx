<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Em_other.aspx.cs" Inherits="EMS201724112103.Em_other" %>

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
        <span class="auto-style1">姓名：</span><asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <span class="auto-style1">密码：</span><asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        <span class="auto-style1">电话：</span><asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style1"></asp:TextBox>
        <span class="auto-style1">
        <br />
        <asp:Label ID="Label2" runat="server" Text="是否为管理员："></asp:Label>
        </span>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="auto-style1">
            <asp:ListItem>false</asp:ListItem>
            <asp:ListItem>true</asp:ListItem>
        </asp:DropDownList>
        <br class="auto-style1" />
        <span class="auto-style1">所属部门编号</span>：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="添加员工" OnClick="Button1_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [emid] = @emid" InsertCommand="INSERT INTO [Employee] ([emid], [emname], [empwd], [emphone], [emmanage], [deid]) VALUES (@emid, @emname, @empwd, @emphone, @emmanage, @deid)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [emname] = @emname, [empwd] = @empwd, [emphone] = @emphone, [emmanage] = @emmanage, [deid] = @deid WHERE [emid] = @emid">
            <DeleteParameters>
                <asp:Parameter Name="emid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="emid" Type="String" />
                <asp:Parameter Name="emname" Type="String" />
                <asp:Parameter Name="empwd" Type="String" />
                <asp:Parameter Name="emphone" Type="String" />
                <asp:Parameter Name="emmanage" Type="Boolean" />
                <asp:Parameter Name="deid" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="emname" Type="String" />
                <asp:Parameter Name="empwd" Type="String" />
                <asp:Parameter Name="emphone" Type="String" />
                <asp:Parameter Name="emmanage" Type="Boolean" />
                <asp:Parameter Name="deid" Type="String" />
                <asp:Parameter Name="emid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="emid" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="emid" HeaderText="编号" ReadOnly="True" SortExpression="emid" />
                <asp:BoundField DataField="emname" HeaderText="姓名" SortExpression="emname" />               
                <asp:BoundField DataField="emphone" HeaderText="电话" SortExpression="emphone" />
                <asp:CheckBoxField DataField="emmanage" HeaderText="是否为管理员" SortExpression="emmanage" />
                <asp:BoundField DataField="deid" HeaderText="所属部门编号" SortExpression="deid" />
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
       
    </div>
    <script src="bootstrap/jquery/jquery-1.11.0.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
