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
    <title>Search</title>
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
        #advertisement{
            height: 200px;
            background: #54a0ff;
        }
        .row-p{
            display: flex;
            flex-wrap: wrap;
            width: 1080px;
            margin: 0 auto;
            margin-top: 30px;
            background: rgba(0,0,0,0.8);
        }
        .col-p{
            box-sizing: border-box;
            padding: 4px;
            flex-basis: 25%;
        }
        .product-item{
            background: rgba(0,0,0,0.8);
        }
        .img{
            width: 100%;
            height: 300px;
            background: #54a0ff;
        }
        .col-item{
            padding:15px;
        }
        .product-name:hover{
            color: #54a0ff;
        }
        .product-name{
            color: #ffffff;
            font-size: 16px;
        }
        .price{
            color: #ffffff;
            font-size: 18px;
            font-weight: bold;
        }
        .main-contain{
            text-decoration: none;
        }
        .col-t{
            width: 100%;
            display: flex;
            flex-wrap: wrap;
            padding: 10px 0;
        }
        .capacity-b{
            color: #ffffff;
            margin: 2px;
            text-align: center;
            flex-basis: 44%;
            border: 1px solid #ffffff;
            padding: 5px 0;
            font-size: 13px;
        }
        .capacity-b:hover{
            color: #54a0ff;
            border: 1px solid #54a0ff;
        }
        .home-page{
            width: 1080px;
            margin: 0 auto;
            padding: 10px 0;
        }
        .page-item{
            width: 520px;
            margin: 0 auto;
            display: flex;
        }
        .page-link{
            background: rgba(0,0,0,0.8);
            padding: 5px;
            border: 1px solid #ffffff;
            text-decoration: none;
            color: #ffffff;
            width: 14.28571428%;
            text-align: center;
            margin:1px;
        }
        .page-link:hover{
            border: 1px solid #1a73e8;
            color: #1a73e8;
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
                        <form action="home " method="get">
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

<div id="advertisement">

</div>

<div id="product">
    <div class="row-p">
        <c:forEach var="p" items="${productPage.content}">
            <div class="col-p">
                <div class="product-item">
                    <a class="main-contain" href="">
                        <img class="img" src="">
                        <div class="col-item">
                            <div class="product-name">${p.name}</div>
                            <div class="capacity">
                                <div class="col-t">
                                    <div class="capacity-b">${p.capacity.capacity}</div>
                                    <div class="capacity-b">${p.capacity.capacity}</div>
                                    <div class="capacity-b">${p.capacity.capacity}</div>
                                    <div class="capacity-b">${p.capacity.capacity}</div>
                                </div>
                            </div>
                            <div class="price">${p.price.unitPrice} đ</div>
                        </div>
                    </a>
                </div>
            </div>
        </c:forEach>

        <nav class="home-page" aria-label="Page navigation example">
            <div class="page-item">
                <a class="page-link" href="searchProduct?searchproduct=${searchproduct}&page=0">&laquo;</a>
                <c:choose>
                    <c:when test="${productPage.number >3}">
                        <a class="page-link" href="searchProduct?searchproduct=${searchproduct}&page=${productPage.number-3}">${productPage.number-3}</a>
                        <a class="page-link" href="searchProduct?searchproduct=${searchproduct}&page=${productPage.number-1}">${productPage.number-1}</a>
                        <a class="page-link" style="border: 1px solid #1a73e8 ;color: #1a73e8" href="searchProduct?searchproduct=${searchproduct}&page=${productPage.number}">${productPage.number}</a>
                        <a class="page-link" href="searchProduct?searchproduct=${searchproduct}&page=${productPage.number+1}">${productPage.number+1}</a>
                        <a class="page-link" href="searchProduct?searchproduct=${searchproduct}&page=${productPage.number+3}">${productPage.number+3}</a>
                    </c:when>
                    <c:otherwise>
                        <c:choose>
                            <c:when test="${productPage.number==1}">
                                <a class="page-link" style="border: 1px solid #1a73e8 ;color: #1a73e8" href="searchProduct?searchproduct=${searchproduct}&page=1">1</a>
                            </c:when>
                            <c:otherwise>
                                <a class="page-link" href="searchProduct?searchproduct=${searchproduct}&page=1">1</a>
                            </c:otherwise>
                        </c:choose>
                        <c:choose>
                            <c:when test="${productPage.number==2}">
                                <a class="page-link" style="border: 1px solid #1a73e8 ;color: #1a73e8" href="searchProduct?searchproduct=${searchproduct}&page=2">2</a>
                            </c:when>
                            <c:otherwise>
                                <a class="page-link" href="searchProduct?searchproduct=${searchproduct}&page=2">2</a>
                            </c:otherwise>
                        </c:choose>
                        <c:choose>
                            <c:when test="${productPage.number==3}">
                                <a class="page-link" style="border: 1px solid #1a73e8 ;color: #1a73e8" href="searchProduct?searchproduct=${searchproduct}&page=3">3</a>
                            </c:when>
                            <c:otherwise>
                                <a class="page-link" href="searchProduct?searchproduct=${searchproduct}&page=3">3</a>
                            </c:otherwise>
                        </c:choose>
                        <a class="page-link" href="searchProduct?searchproduct=${searchproduct}&page=4">4</a>
                        <a class="page-link" href="searchProduct?searchproduct=${searchproduct}&page=5">5</a>
                    </c:otherwise>
                </c:choose>
                <a class="page-link" href="searchProduct?searchproduct=${searchproduct}&page=${productPage.totalPages-1}">&raquo;</a>
            </div>
        </nav>
    </div>

</div>
</body>
</html>