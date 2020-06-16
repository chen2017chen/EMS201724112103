<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EMS201724112103.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style2{
           text-align:center;
          background-color:darkgray;
        }
   
        .auto-style3 {
            text-align: center;
            font-family: 楷体;
            font-weight: normal;
        }
   
        </style>
</head>
<body background="images\background.jpg" style="background-repeat:no-repeat ;background-size:100% 100%;background-attachment: fixed;">
    <form id="form1" runat="server">
<div class="container" style="width:350px;margin-top:30px;">
            <div class="row">
               <div class ="col">
                <div class="card">
                    <div class="card-header bg-info">
                        <h1 class="auto-style3">设备管理系统</h1>
                    </div>
                    <div class="card-body">
                        <!--群1-->
                        <div class="form-group">
                            <lable for="txtName">账号</lable><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="账号或密码错误！" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
                            &nbsp;<asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                        </div>
                       
                        <!--群2-->
                        <div class="form-group">
                            <lable for="gender">密码</lable><asp:Label ID="Label1" runat="server" Text=""></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                        </div><br />
                        <div class="auto-style3">
                            <asp:Button ID="Button1" runat="server" Text="登陆" class="btn btn-success" OnClick="Button1_Click1"/>                         
                            </div>
                   <br />

                        
        </div>
                    </div>
         <div>
            <h5 class="auto-style2">联系方式：775000023@qq.com<br />
                                   管理员：陈佳发
            </h5>             
                    </div>
                </div>
                  
            </div>
        </div>

    </form>
       
        </body>
</html>
