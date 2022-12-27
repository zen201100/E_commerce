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
        #form-pr{
            width: 100%;
            clear: both;
        }
        .form-np{
            padding: 15px 0;
            border-bottom: 1px solid #ffffff;
        }
        .name-pr{
            font-weight: bold;
            font-size: 20px;
            color:rgba(0,0,0,0.8);
        }
        .pr-dt{
            width: 1080px;
            margin: 0 auto;
        }
        .row-pr{
            padding-top: 10px;
            display: flex;
            box-sizing: border-box;
        }
        .col-l{
            width: 57%;
            padding-right:5px;
        }
        .col-r{
            width: 43%;
            padding-left: 5px;
        }
        .img-pr{
            width: 100%;
            border: 1px solid black;
            height: 500px;
        }
        .col-tt{
            border: 1px solid black;
            height: 500px;
        }
        .od-pr{
            padding: 8px;
        }
        .gb-cl{
            display: flex;
            margin-bottom: 12px;
        }
        .g-l{
            border: 1px solid black;
            padding: 7px 12px;
            margin-right: 2px;
            text-decoration: none;
            font-weight: bold;
            color: rgba(0,0,0,0.8);
        }
        .g-l:hover{
            border: 1px solid #1a73e8;
            color: #1a73e8;
        }
        .price{
            font-size: 20px;
            color: #d0021c;
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
                            <form action="searchProduct" method="get">
                                <input class="search-control" type="text" name="searchproduct" placeholder="Search..." >
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
                    <a href="">Hãng</a>
                    <a href="">Giá</a>
                    <a href="">Loại điện thoại</a>
                    <a href="">RAM</a>
                    <a href="">Dung lượng</a>
                    <a href="">Pin</a>
                </div>
            </div>
        </div>
    </div>

    <div id="form-pr">
        <div class="pr-dt">
            <div class="form-np">
                <div class="name-pr">${productDetails.name}</div>
            </div>
            <div class="row-pr">
                <div class="col-l">
                    <img class="img-pr" src="">
                </div>
                <div class="col-r">
                    <div class="col-tt">
                        <div class="od-pr">
                            <div class="gb-cl">
                                <a class="g-l" href=""><div>4GB-64GB</div></a>
                                <a class="g-l" href=""><div>8GB-128GB</div></a>
                                <a class="g-l" href=""><div>12GB-512GB</div></a>
                                <a class="g-l" href=""><div>1TB</div></a>
                            </div>
                            <div class="gb-cl">
                                <a class="g-l" href=""><div>Tím</div></a>
                                <a class="g-l" href=""><div>Hồng</div></a>
                                <a class="g-l" href=""><div>Xám</div></a>
                                <a class="g-l" href=""><div>Xanh Dương</div></a>
                            </div>
                            <div class="price-pr">
                                <div class="price">${productDetails.price.unitPrice} đ</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
