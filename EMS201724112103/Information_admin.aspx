﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Information_admin.aspx.cs" Inherits="EMS201724112103.Information_admin" %>

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
        .table-style {
            font-size: x-large;
            color: #00FF00;
            width: 100%;
        }
        .auto-style1 {
            border: 1px solid #00FFFF;
            padding: 1px 4px;
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
                   
                    <li class="style" style="float:right">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <a href="Login.aspx">注销</a></li>
                </ul> 
            </div>
        </nav>

        <br />

        <table class="table-style" >
            <tr align="center">
                <td class="auto-style1">个人信息</td>
                <td rowspan="5" align="right">
                    <img src="images/张飞.png" /></td>
            </tr>
            <tr align="left">
                <td class="auto-style1">编号：<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr align="left">
                <td class="auto-style1">姓名：<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr align="left">
                <td class="auto-style1">电话：<asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr align="left">
                <td class="auto-style1">所属部门：<asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
       <script src="bootstrap/jquery/jquery-1.11.0.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        
    </form>
</body>
</html>