<%--
  Created by IntelliJ IDEA.
  User: Phuc Lee
  Date: 12/26/22
  Time: 10:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer</title>
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
        .col-acc{
            width: 40%;
        }
        .row-acc{
            display: flex;
            float: right;
        }
        .dn-dk a{
            text-decoration: none;
            color: #ffffff;
        }
        .dn-dk a:hover{
            opacity: 0.85;
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
        .row-cd a {
            font-size: 16px;
            color: #ffffff;
            text-decoration: none;
            justify-content: space-between;
            padding: 5px;
            flex-basis: 16.6666667%;
            border-right: 1px solid #ffffff;
            text-align: center;
        }
        .col-cart{
            margin-right: 40px;
            display: flex;
        }
        .col-cart a{
            width: 20px;
            height: 20px;
            background: #54a0ff;
            margin-right: 20px;
            margin-left: 20px;
            margin-top: 13px;
        }
        .avata-lg{
            width: 44px;
            height: 44px;
            border-radius:50%;
            background: #ffffff;
            position: relative;
            display: block;
        }
    </style>
</head>
<body>
    <div id="head">
        <div class="head-top">
            <div class="container">
                <div class="row-cs">
                    <div class="logo">
                        <a style="color: #ffffff" href="loginAccount?username=${customer.userName}&password=${customer.password}">PHUCTAI</a>
                    </div>

                    <div class="col-cs">
                        <div class="search">
                            <form action="" method="">
                                <input class="search-control" type="text" name="search" placeholder="Search..." >
                                <input style="padding: 0 5px" type="submit">
                            </form>
                        </div>
                    </div>

                    <div class="col-acc">
                        <div class="row-acc">
                            <div class="col-cart">
                                <a class="tb" href=""></a>
                                <a class="gh" href=""></a>
                            </div>
                            <div class="avata-lg">

                            </div>
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
</body>
</html>