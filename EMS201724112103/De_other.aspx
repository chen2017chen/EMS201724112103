<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="De_other.aspx.cs" Inherits="EMS201724112103.De_other" %>

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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Department] WHERE [deid] = @deid" InsertCommand="INSERT INTO [Department] ([deid], [dename], [demanage], [demanageid]) VALUES (@deid, @dename, @demanage, @demanageid)" SelectCommand="SELECT * FROM [Department]" UpdateCommand="UPDATE [Department] SET [dename] = @dename, [demanage] = @demanage, [demanageid] = @demanageid WHERE [deid] = @deid">
            <DeleteParameters>
                <asp:Parameter Name="deid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="deid" Type="String" />
                <asp:Parameter Name="dename" Type="String" />
                <asp:Parameter Name="demanage" Type="String" />
                <asp:Parameter Name="demanageid" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="dename" Type="String" />
                <asp:Parameter Name="demanage" Type="String" />
                <asp:Parameter Name="demanageid" Type="String" />
                <asp:Parameter Name="deid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="deid" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="172px" Width="684px">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="deid" HeaderText="部门编号" ReadOnly="True" SortExpression="deid" />
                <asp:BoundField DataField="dename" HeaderText="部门名字" SortExpression="dename" />
                <asp:BoundField DataField="demanage" HeaderText="部门管理员" SortExpression="demanage" />
                <asp:BoundField DataField="demanageid" HeaderText="管理员编号" SortExpression="demanageid" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <br />
       
    </div>
    <script src="bootstrap/jquery/jquery-1.11.0.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    </form>
</body>
</html>