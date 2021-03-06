﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default_admin.aspx.cs" Inherits="EMS201724112103.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
            border-left-style: solid;
            border-left-color: #C0C0C0;
            border-right-style: solid;
            border-top-style: solid;
            border-top-color: #C0C0C0;
            border-bottom-style: solid;
        }
        .auto-style2 {
            font-family: Arial;
            color: #66AFE9;
            font-size: large;
        }
        .auto-style4 {
            font-family: Arial;
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style5 {
            font-size: x-large;
            color: #00FF00;
        }
        .auto-style6 {
            border-left-style: solid;
            border-left-color: #C0C0C0;
            border-right-style: solid;
            border-top-style: solid;
            border-top-color: #C0C0C0;
            border-bottom-style: solid;
            font-size: x-large;
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
                    <li class="style"><a href="Information_admin.aspx ">个人信息</a></li>
                    <li class="style"><a href=" "></a></li>                   
                    <li class="style" style="float:right">管理员:
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <a href="Login.aspx">注销</a></li>

                </ul> 
               

            </div>
        </nav>
        <table class="nav-justified">
            
            <tr align="center" class="auto-style2">
                <td class="auto-style6">管理员</td>
                <td class="auto-style6">设备</td>
                <td class="auto-style6">部门</td>
                <td class="auto-style6">员工信息</td>
            </tr>
            <tr align="center">
                <td class="auto-style6">
                    编号：<asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="设备查询" OnClick="Button1_Click1" CssClass="auto-style5" />
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button2" runat="server" Text="部门查询" OnClick="Button2_Click1" CssClass="auto-style5" />
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button3" runat="server" Text="员工信息查询" OnClick="Button3_Click" CssClass="auto-style5" />
                </td>
            </tr>
            <tr align="center">
                <td class="auto-style6">
                    姓名：<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button4" runat="server" Text="设备添加" OnClick="Button4_Click" CssClass="auto-style5" />
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button8" runat="server" Text="部门修改" OnClick="Button8_Click" CssClass="auto-style5" />
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button6" runat="server" Text="员工信息添加" OnClick="Button6_Click" CssClass="auto-style5" />
                </td>
            </tr>
            <tr align="center">
                <td class="auto-style6">
                    所属部门：<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button7" runat="server" Text="设备修改" OnClick="Button7_Click" CssClass="auto-style5" />
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button12" runat="server" Text="删除员工" OnClick="Button12_Click" CssClass="auto-style5" />
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button9" runat="server" Text="员工信息修改" OnClick="Button9_Click" CssClass="auto-style5" />
                </td>
            </tr>
            <tr align="center">
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="Button10" runat="server" Text="设备删除" OnClick="Button10_Click" CssClass="auto-style5" />
                </td>
                <td class="auto-style1">
                    <span class="auto-style5"></td>
                <td class="auto-style1">
                    </span></td>
            </tr>
               
        </table>
        <br />
        <P align="center" class="auto-style4">管理员拥有以上所有权限，可执行所有操作！！</P><br />


    </div>
    <script src="bootstrap/jquery/jquery-1.11.0.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
