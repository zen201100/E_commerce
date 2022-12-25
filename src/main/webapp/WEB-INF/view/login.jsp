<%--
  Created by IntelliJ IDEA.
  User: Phuc Lee
  Date: 12/25/22
  Time: 11:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <style>
        *{
            padding: 0;
            margin: 0;
        }
        body{
            background: #B6E3FF;

        }
        .head-top{
            padding: 15px 0;
            background: rgba(0,0,0,0.8);
        }
        .container{
            width: 1080px;
            margin: 0 auto;
            display: flex;
        }
        .search form{
            display: flex;
        }
        .row-cs{
            width: 100%;
            display: flex;
        }
        .col-cs{
            width: 44%;
            display: flex;
        }
        .logo {
            width: 16%;
        }
        .logo a{
            font-size: 210%;
            text-decoration: none;
            margin-right: 30px;
        }
        .search{
            border-radius:4px ;
            background: #6e7781;
        }
        .search-control{
            width: 350px;
            padding: 12px;
            outline: 0;
            border: none;
            background: transparent;
            color: #fff;
            font-size: 15px;
        }
        .search input::placeholder {
            color: #ffffff;
        }
        .col-dndk{
            width: 40%;
        }
        .dn-dk{
            display: flex;
            float: right;
            margin-top: 10px;
        }
        .dn-dk a{
            text-decoration: none;
            color: #ffffff;
        }
        .dn-dk a:hover{
            box-shadow: 0 0 20px rgba(255, 255, 255, .5);
        }
        .chan{
            margin-right: 5px;
            margin-left: 5px;
            color: #ffffff;
        }
        .head-dow{
            background: #6e7781;
        }
        .row-dow{
            width: 1080px;
            margin: 0 auto;
            padding: 12px 0;
        }
        .row-cd{
            display: flex;
        }
        .row-cd a{
            font-size: 16px;
            color: #ffffff;
            text-decoration: none;
            justify-content: space-between;
            padding: 5px;
            flex-basis: 16.6666667%;
            border-right: 1px solid #ffffff;
            text-align: center;
        }
        #form-login{
            width: 100%;
        }
        .login{
            padding: 40px 0;
        }
        .login-c{
            width: 1080px;
            margin: 0 auto;
            display: flex;
        }
        .login-t{
            width: 100%;
            display: flex;
        }
        .login-l{
            width: 67%;
        }
        .login-r{
            width: 33%;
            background: rgba(0,0,0,0.8);
            box-shadow: 0 0 20px rgba(255, 255, 255, .5);
            box-shadow: inset 0 0 20px rgba(255, 255, 255, .5);
        }
        .row-f{
            padding: 20px 0;
            text-align: center;
        }
        .title{
            color: #ffffff;
            font-weight: bold;
            font-size: 20px;
            margin-bottom: 20px;
        }
        .col-input{
            width: 280px;
            margin-bottom: 20px;
            padding: 15px;
            background: transparent;
            color: #ffffff;
            font-size: 15px;
            outline: 0;
            border: 0;
            border-bottom: 1px solid #ffffff;
        }
        .col-input::placeholder{
            color: #ffffff;
        }
        .col-submit{
            border: 1px solid #ffffff;
            padding: 15px;
            width: 280px;
            background: transparent;
            color: #ffffff;
            border-radius:2px ;
            transition: 0.25s ease-in-out;
        }
        .col-submit:hover{
            border: 1px solid #54a0ff;
            box-shadow: inset 0 0 20px rgba(255, 255, 255, .5);
        }
    </style>
</head>
<body>
    <div id="head">
        <div class="head-top">
            <div class="container">
                <div class="row-cs">
                    <div class="logo">
                        <a style="color: #ffffff" href="home">PHUCTAI</a>
                    </div>

                    <div class="col-cs">
                        <div class="search">
                            <form action="" method="">
                                <input class="search-control" type="text" name="search" placeholder="Search..." >
                                <input style="padding: 0 5px" type="submit">
                            </form>
                        </div>
                    </div>

                    <div class="col-dndk">
                        <div class="dn-dk">
                            <a class="dn" href="login">Đăng nhập</a>
                            <div class="chan">|</div>
                            <a class="dk" href="registCustomer">Đăng ký</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="head-dow">
            <div class="row-dow">
                <div class="row-cd">
                    <a href="">Hang</a>
                    <a href="">Gia</a>
                    <a href="">Loai dien thoai</a>
                    <a href="">RAM</a>
                    <a href="">Dung luong</a>
                    <a href="">Pin</a>
                </div>
            </div>
        </div>
    </div>

    <div id="form-login">
        <div class="login">
            <div class="login-c">
                <div class="login-t">
                    <div class="login-l">

                    </div>

                    <div class="login-r">
                        <div class="row-f">
                            <div class="title">Đăng nhập</div>
                            <form method="" action="">
                                <input class="col-input" type="text" name="username" placeholder="Tên đăng nhập">
                                <input class="col-input" type="password" name="password" placeholder="Mật khẩu">
                                <br>
                                <input class="col-submit" type="submit" value="Đăng nhập">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
