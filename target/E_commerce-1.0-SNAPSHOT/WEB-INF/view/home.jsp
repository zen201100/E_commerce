<%--
  Created by IntelliJ IDEA.
  User: Phuc Lee
  Date: 12/24/22
  Time: 11:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home</title>
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
            opacity: 0.85;
        }
        .chan{
            margin-right: 5px;
            margin-left: 5px;
            color: #ffffff;
        }
        .head-dow{
            background: #6e7781
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
        #product{
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            width: 1080px;
            margin: 0 auto;
        }
        .product-item{
            padding-right: 15px;
            padding-left: 15px;
            box-sizing: border-box;
            flex-basis: 25%;
        }
        .product-item a{
            text-decoration: none;
        }
        .product-name{
            color: black;
            font-size: 20px;
            font-weight: bold;
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

    <div id="product">
        <c:forEach var="p" items="${product}">
            <div class="product-item">
                <a href="">
                    <img src="">
                    <div class="product-name">${p.name}</div>
                </a>
                <div class="quantity">So luong: ${p.quantity}</div>
            </div>
        </c:forEach>
    </div>
</body>
</html>
