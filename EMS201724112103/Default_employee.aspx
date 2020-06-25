<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default_employee.aspx.cs" Inherits="EMS201724112103.WebForm2" %>

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
        .auto-style2 {
            border-style: solid;
            border-color: #00FF00;
        }
        .auto-style3 {
            border-style: solid;
            border-color: #00FF00;
            background-color: #DFF0D8;
        }
        .auto-style4 {
            font-family: Arial;
            color: #FF0000;
            font-size: x-large;
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
                    <li class="style"><a href="Eq_search.aspx ">设备</a></li>
                    <li class="style"><a href="De_search.aspx">部门</a></li>
                    <li class="style"><a href="Information_employee.aspx">个人信息</a></li>
                    <li class="style"><a href=" "></a></li>                   
                    <li class="style" style="float:right">员工:
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <a href="Login.aspx">注销</a></li>

                </ul> 
               

            </div>
        </nav>
        <table class="nav-justified">
            
            <tr align="center">
                <td class="auto-style3">员工信息</td>
                <td class="auto-style3">信息查询</td>
                
            </tr>
            <tr align="center">
                <td class="auto-style2">
                    编号：<asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" Text="部门查询" OnClick="Button2_Click" />
                </td>
                
            </tr>
            <tr align="center">
                <td class="auto-style2">
                    姓名：<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="设备查询" OnClick="Button1_Click" />
                </td>
               
            </tr>
            <tr align="center">
                <td class="auto-style2">
                    所属部门：<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button3" runat="server" Text="员工信息" OnClick="Button3_Click" />
                </td>              
            </tr>          
               
        </table>
        <br />
        <p class="auto-style4">
        在本系统中，员工可查询个人信息，查询设备信息，查询部门信息，除此之外没有其他特殊权限，如有疑问，请联系所属部门管理员。</p>
    </div>
    <script src="bootstrap/jquery/jquery-1.11.0.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    </form>
    
</body>
</html>
