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
    <link rel="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
    <style>
        *{
            padding: 0;
            margin: 0;
        }
        body{
            background: #f3f3f3;
        }
        .head-top{
            padding: 15px 0;
            background: rgba(0,0,0,0.9);
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
            width: 54%;
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
            background: #f3f3f3;
        }
        .search-control{
            width: 400px;
            padding: 11px;
            outline: 0;
            border: none;
            background: transparent;
            color: #fff;
            font-size: 15px;
        }
        .search input::placeholder {
            color: rgba(0,0,0,0.9);
        }
        .cart{
            width: 50%;
        }
        .link-cart{
            text-decoration: none;
        }

        .name-cart{
            background: #1a73e8;
            margin: 0 30px;
            padding: 10px;
            text-align: center;
            color: #ffffff;
            border-radius: 4px;
        }
        .name-cart:hover{
            color: #333333;
            box-shadow: inset 0 0 20px rgba(255, 255, 255, .5);
        }
        .dn-dk{
            width: 50%;
        }
        .col-dndk{
            width: 30%;
            display: flex;
        }
        .row-dn-dk{
            display: flex;
            padding: 10px;
        }
        .dn-dk a{
            text-decoration: none;
            color: #ffffff;
        }
        .dn-dk a:hover{
            color: #1a73e8;
        }
        .chan{
            margin-right: 5px;
            margin-left: 5px;
            color: #ffffff;
        }
        .head-dow{
            background: #ffffff;
        }
        .row-dow{
            width: 1080px;
            margin: 0 auto;
            padding: 10px 0;
        }
        .row-cd{
            display: flex;
        }
        .name-type{
            padding: 5px;
            font-size: 16px;
            color: rgba(0,0,0,0.9);
        }
        .name-type:hover{
            color: #1a73e8;
        }
        .name-title{
            flex-basis: 12.5%;
            border-right: 1px solid #e0e0e0;
            text-align: center;
        }
        .name-title a{
            text-decoration: none;
        }
        .name-title{
            display: block;
            position: relative;
            padding: 5px 0;
        }

        .name-title:hover>.form-providers{
            position: absolute;
            display: block;
        }
        .form-providers{
            display: none;
            width: 600px;
            background: #fff;
            box-shadow: 0 0 20px rgba(0,0,0,0.9);
            border-radius: 4px;
        }
        .row-providers{
            display: flex;
            flex-wrap: wrap;
            padding: 10px;
            box-shadow: inset 0 0 20px rgba(255, 255, 255, .5);
            border-radius: 4px;
        }
        .col-providers{
            flex-basis: 20%;
            box-sizing: border-box;
        }
        .name-providers{
            padding: 5px;
            margin: 2px;
            color: rgba(0,0,0,0.9);
            font-weight: bold;
            border: 1px solid #e0e0e0;
        }
        .name-providers:hover{
            border: 1px solid #1a73e8;
        }

        .name-title:hover>.form-price{
            position: absolute;
            display: block;
        }
        .form-price{
            display: none;
            width: 600px;
            background: #fff;
            box-shadow: 0 0 20px rgba(0,0,0,0.9);
            border-radius: 4px;
        }
        .row-price{
            display: flex;
            flex-wrap: wrap;
            padding: 10px;
            box-shadow: inset 0 0 20px rgba(255, 255, 255, .5);
            border-radius: 4px;
        }
        .col-price{
            flex-basis: 20%;
            box-sizing: border-box;
        }
        .name-price{
            padding: 5px;
            margin: 2px;
            color: rgba(0,0,0,0.9);
            font-weight: bold;
            border: 1px solid #e0e0e0;
        }
        .name-price:hover{
            border: 1px solid #1a73e8;
        }

        .name-title:hover>.form-typephone{
            position: absolute;
            display: block;
        }
        .form-typephone{
            display: none;
            width: 206px;
            background: #fff;
            box-shadow: 0 0 20px rgba(0,0,0,0.9);
            border-radius: 4px;
        }
        .row-typephone{
            display: flex;
            flex-wrap: wrap;
            padding: 10px;
            box-shadow: inset 0 0 20px rgba(255, 255, 255, .5);
            border-radius: 4px;
        }
        .col-typephone{
            box-sizing: border-box;
        }
        .name-typephone{
            padding: 5px 7px;
            margin: 2px;
            color: rgba(0,0,0,0.9);
            font-weight: bold;
            border: 1px solid #e0e0e0;
        }
        .name-typephone:hover{
            border: 1px solid #1a73e8;
        }

        .name-title:hover>.form-caparity-ram{
            position: absolute;
            display: block;
        }
        .form-caparity-ram{
            display: none;
            width: 300px;
            background: #fff;
            box-shadow: 0 0 20px rgba(0,0,0,0.9);
            border-radius: 4px;
        }
        .row-caparity-ram{
            display: flex;
            flex-wrap: wrap;
            padding: 10px;
            box-shadow: inset 0 0 20px rgba(255, 255, 255, .5);
            border-radius: 4px;
        }
        .col-caparity-ram{
            box-sizing: border-box;
        }
        .name-caparity-ram{
            padding: 5px 7px;
            margin: 2px;
            color: rgba(0,0,0,0.9);
            font-weight: bold;
            border: 1px solid #e0e0e0;
        }
        .name-caparity-ram:hover{
            border: 1px solid #1a73e8;
        }

        .name-title:hover>.form-pin-sac-feature{
            position: absolute;
            display: block;
        }
        .form-pin-sac-feature{
            display: none;
            right: 0;
            width: 600px;
            background: #fff;
            box-shadow: 0 0 20px rgba(0,0,0,0.9);
            border-radius: 4px;
        }
        .row-pin-sac-feature{
            display: flex;
            flex-wrap: wrap;
            padding: 10px;
            box-shadow: inset 0 0 20px rgba(255, 255, 255, .5);
            border-radius: 4px;
        }
        .col-pin-sac-feature{
            box-sizing: border-box;
        }
        .name-pin-sac-feature{
            padding: 5px 7px;
            margin: 2px;
            color: rgba(0,0,0,0.9);
            font-weight: bold;
            border: 1px solid #e0e0e0;
        }
        .name-pin-sac-feature:hover{
            border: 1px solid #1a73e8;
        }

        .sale-product{
            width: 1080px;
            margin: 0 auto;
            display: flex;
            padding: 25px 0;
            box-sizing: border-box;
        }
        .sale-l{
            width: 65%;
            margin-right: 5px;
        }
        .sale-r{
            background: #333333;
            border-radius: 10px;
            width: 35%;
            margin-left: 5px;
            padding: 8px;
        }
        .col-sale{
            margin-top: 6px;
            height: 150px;
            background: #ffffff;;
            border-radius: 10px;
        }
        .img-sale{
            background: #6e7781;
            height: 350px;
            margin-bottom: 8px;
            border-radius: 10px;
        }
        .advertisement{
            background: #ffe818;
            height: 144px;
            border-radius: 10px;
        }
        .sale-pevrd{
            width: 1080px;
            margin: 0 auto;
            background: #ED174B;
        }
        .row-sale{
            display: flex;
            flex-wrap: wrap;
            padding: 4px
        }
        .col-sale-everyday{
            flex-basis: 25%;
            box-sizing: border-box;
            padding: 4px
        }
        .link-sevrd{
            height: 350px;
            background: #f1f1f1;
        }
        .name-sale{
            font-size: 30px;
            color: #ffffff;
            text-align: center;
            padding: 10px 0;
        }
        .name-km{
            text-align: center;
            color:#ffe818;
            font-size: 16px;
        }
        .product{
            padding: 25px 0;
        }
        .b-color{
            width: 1080px;
            margin: 0 auto;
            background: rgba(0,0,0,0.9);
        }
        .form-name-pr{
            width: 1080px;
            margin: 0 auto;
        }
        .name-pr{
            color: #ffff00;
            font-size: 30px;
            font-weight: bold;
            padding: 10px 0;
            text-align: center;
        }
        .row-p{
            display: flex;
            flex-wrap: wrap;
            padding: 4px;
            margin: 0 auto;
        }
        .col-p{
            box-sizing: border-box;
            padding: 4px;
            flex-basis: 25%;
        }
        .product-item{
            background: #fff;
        }
        .img{
            width: 100%;
            height: 300px;
            background: #54a0ff;
        }
        .col-item{
            padding:10px;
            height: 150px;
        }
        .product-name:hover{
            color: #54a0ff;
        }
        .product-name{
            color: #333333;
            font-weight: bold;
            font-size: 16px;
        }
        .size-pr{
            display: flex;
            padding: 5px 0;
        }
        .size{
            border: 1px solid #ffffff;
            background: #eaeaea;
            margin-right: 3px;
            padding: 0 5px;
            color: #333333;
        }
        .gb-product{
            display: flex;
            flex-wrap: wrap;
        }
        .gb-cl{
            border: 1px solid #e0e0e0;
            margin-right: 4px;
            margin-bottom: 4px;
            padding: 7px 12px;
            color: #333;
            text-align: center;
        }
        .gb-cl:hover{
            border: 1px solid #1a73e8;
            color: #1a73e8;
        }
        .price{
            margin-top: 5px;
            color: #1a73e8;
            font-size: 18px;
            font-weight: bold;
        }
        .main-contain{
            text-decoration: none;
        }
        .view-product{
            width: 1080px;
            margin: 0 auto;
            padding: 20px 0;
        }
        .view-pr{
            width: 300px;
            margin: 0 auto;
        }
        .view-pr a{
            text-decoration: none;
        }
        .link-view{
            border: 1px solid #f1f1f1;
            text-align: center;
            border-radius: 2px;
            padding: 6px;
            color: #f1f1f1;
            font-size: 20px;
            font-weight: bold;
        }
        .link-view:hover{
            box-shadow: inset 0 0 20px rgba(255, 255, 255, .5);
            color: #1a73e8;
        }
        .payment-online{
            padding-bottom: 25px;
        }
        .name-payment{
            text-align: center;
            padding: 10px;
            color: #f1f1f1;
            font-size: 20px;
            font-weight: bold;
        }
        .form-payment-ol{
            background-color: #ED4514;
            width: 1080px;
            margin: 0 auto;
        }
        .row-payment-ol{
            display: flex;
            flex-wrap: wrap;
            padding: 4px;
        }
        .col-payment{
            box-sizing: border-box;
            flex-basis: 33.3333%;
            padding: 4px;
        }
        .payment-link{
            background: #f1f1f1;
            height: 200px;
        }

        .form-service{
            padding-bottom: 25px;
        }
        .service{
            width: 1080px;
            margin: 0 auto;
            padding-bottom: 10px;
            background: #ff685f;
        }
        .row-service{
            display: flex;
            flex-wrap: wrap;
            padding: 4px;
        }
        .col-service{
            flex-basis: 25%;
            box-sizing: border-box;
            padding: 4px
        }
        .link-service{
            height: 200px;
            background: #f1f1f1;
        }
        .name-service{
            font-size: 30px;
            color: #ffe818;
            text-align: center;
            padding: 10px 0;
        }
        #form-footer{
            border-top: 1px solid #e0e0e0;
            background: #fff;
        }
        .footer{
            width: 1080px;
            margin: 0 auto;
            display: flex;
            padding: 20px 0
        }
        .footer-tt{
            width: 33.3333333%;
        }
        .link-hover{
            text-decoration: none;
            color: #4a4a4a;;
        }
        .link-hover:hover{
            color: #dd0000;
        }
        .col-tt-footer{
            color: rgba(0,0,0,0.8);
            padding: 8px 0;
        }
        .footer-bottom{
            background-color: #f1f1f1;
        }
        .bottom{
            width: 1080px;
            margin: 0 auto;
        }
        .bottom p{
            color: #666;
            padding: 20px 0;
            font-size: 13px;
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
                        <div class="cart">
                            <a class="link-cart" href="cart"><div class="name-cart">Giỏ hàng</div></a>
                        </div>
                        <div class="dn-dk">
                            <div class="row-dn-dk">
                                <a class="dn" href="login">Đăng nhập</a>
                                <div class="chan">|</div>
                                <a class="dk" href="registCustomer">Đăng ký</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="head-dow">
            <div class="row-dow">
                <div class="row-cd">
                    <div class="name-title">
                        <a href="product"><div class="name-type">Điện thoại</div></a>
                    </div>
                    <div class="name-title">
                        <a href="product"><div class="name-type">Hãng</div></a>
                        <div class="form-providers">
                            <div class="row-providers">
                                <c:forEach var="p" items="${providers}">
                                    <div class="col-providers"><a href=""><div class="name-providers">${p.providerName}</div></a></div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="name-title">
                        <a href="product"><div class="name-type">Giá</div></a>
                        <div class="form-price">
                            <div class="row-price">
                                <div class="col-price"><a href=""><div class="name-price">Dưới 2 triệu</div></a></div>
                                <div class="col-price"><a href=""><div class="name-price">Từ 2-4 triệu</div></a></div>
                                <div class="col-price"><a href=""><div class="name-price">Từ 4-7 triệu</div></a></div>
                                <div class="col-price"><a href=""><div class="name-price">Từ 7-13 triệu</div></a></div>
                                <div class="col-price"><a href=""><div class="name-price">Từ 13-20 triệu</div></a></div>
                                <div class="col-price"><a href=""><div class="name-price">Trên 20 triệu</div></a></div>
                            </div>
                        </div>
                    </div>
                    <div class="name-title">
                        <a href="product"><div class="name-type">Loại điện thoại</div></a>
                        <div class="form-typephone">
                            <div class="row-typephone">
                                <c:forEach var="p" items="${typePhone}">
                                    <div class="col-typephone"><a href=""><div class="name-typephone">${p.typePhone}</div></a></div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="name-title">
                        <a href="product"><div class="name-type">Dung lượng</div></a>
                        <div class="form-caparity-ram">
                            <div class="row-caparity-ram">
                                <c:forEach var="p" items="${caparity}">
                                    <div class="col-caparity-ram"><a href=""><div class="name-caparity-ram">${p.capacity}</div></a></div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="name-title">
                        <a href="product"><div class="name-type">RAM</div></a>
                        <div class="form-caparity-ram">
                            <div class="row-caparity-ram">
                                <div class="col-caparity-ram"><a href=""><div class="name-caparity-ram">4GB</div></a></div>
                                <div class="col-caparity-ram"><a href=""><div class="name-caparity-ram">6GB</div></a></div>
                                <div class="col-caparity-ram"><a href=""><div class="name-caparity-ram">8GB</div></a></div>
                                <div class="col-caparity-ram"><a href=""><div class="name-caparity-ram">12GB</div></a></div>
                            </div>
                        </div>
                    </div>
                    <div class="name-title">
                        <a href="product"><div class="name-type">Pin & Sạc</div></a>
                        <div class="form-pin-sac-feature">
                            <div class="row-pin-sac-feature">
                                <div class="col-pin-sac-feature"><a href=""><div class="name-pin-sac-feature">Pin khủng trên 5000 mAh</div></a></div>
                                <div class="col-pin-sac-feature"><a href=""><div class="name-pin-sac-feature">Sạc nhanh (từ 18W)</div></a></div>
                                <div class="col-pin-sac-feature"><a href=""><div class="name-pin-sac-feature">Sạc siêu nhanh (từ 33W)</div></a></div>
                                <div class="col-pin-sac-feature"><a href=""><div class="name-pin-sac-feature">Sạc không dây</div></a></div>
                            </div>
                        </div>
                    </div>
                    <div class="name-title">
                        <a href="product"><div class="name-type">Tính năng đặc biệt</div></a>
                        <div class="form-pin-sac-feature">
                            <div class="row-pin-sac-feature">
                                <div class="col-pin-sac-feature"><a href=""><div class="name-pin-sac-feature">Kháng nước,bụi</div></a></div>
                                <div class="col-pin-sac-feature"><a href=""><div class="name-pin-sac-feature">Hỗ trợ 5G</div></a></div>
                                <div class="col-pin-sac-feature"><a href=""><div class="name-pin-sac-feature">Bảo mật khuôn mặt 3D</div></a></div>
                                <div class="col-pin-sac-feature"><a href=""><div class="name-pin-sac-feature">Chống rung quang học</div></a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section>
        <div class="form-sale-pr">
            <div class="sale-product">
                <div class="sale-l">
                    <a href=""><div class="img-sale"></div></a>
                    <a href=""><div class="advertisement"></div></a>
                </div>
                <div class="sale-r">
                    <div class="name-km">Khuyến mãi nổi bật</div>
                    <a href=""><div class="col-sale"></div></a>
                    <a href=""><div class="col-sale"></div></a>
                    <a href=""><div class="col-sale"></div></a>
                </div>
            </div>
        </div>

        <div class="form-pevrd">
            <div class="sale-pevrd">
                <div class="name-sale">FLASH SALE MỖI NGÀY</div>
                <div class="row-sale">
                    <div class="col-sale-everyday">
                        <a href=""><div class="link-sevrd"></div></a>
                    </div>
                    <div class="col-sale-everyday">
                        <a href=""><div class="link-sevrd"></div></a>
                    </div>
                    <div class="col-sale-everyday">
                        <a href=""><div class="link-sevrd"></div></a>
                    </div>
                    <div class="col-sale-everyday">
                        <a href=""><div class="link-sevrd"></div></a>
                    </div>
                </div>
            </div>
        </div>

        <div class="product">
            <div class="b-color">
                <div class="form-name-pr">
                    <div class="name-pr">SẢN PHẨM</div>
                </div>
                <div class="row-p">
                    <c:forEach var="p" items="${productPage.content}">
                        <div class="col-p">
                            <div class="product-item">
                                <a class="main-contain" href="productDetails?id=${p.id}">
                                    <img class="img" src="">
                                    <div class="col-item">
                                        <div class="product-name">${p.name}</div>
                                        <div class="size-pr">
                                            <div class="size">${p.size}</div>
                                            <div class="size">${p.screen.screen}</div>
                                        </div>
                                        <div class="gb-product">
                                            <div class="gb-cl">${p.capacity.capacity}</div>
                                            <div class="gb-cl">${p.color.color}</div>
                                        </div>
                                        <div class="price">${p.price.unitPrice} đ</div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="view-product">
                        <div class="view-pr">
                            <a href="product"><div class="link-view">Xem tất cả sản phẩm</div></a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="payment-online">
            <div class="form-payment-ol">
                <div class="name-payment">GIẢM THÊM KHI THANH TOÁN ONLINE</div>

                <div class="row-payment-ol">
                    <div class="col-payment">
                        <a href=""><div class="payment-link"></div></a>
                    </div>
                    <div class="col-payment">
                        <a href=""><div class="payment-link"></div></a>
                    </div>
                    <div class="col-payment">
                        <a href=""><div class="payment-link"></div></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-service">
            <div class="service">
                <div class="name-service">DỊCH VỤ TIỆN ÍCH</div>
                <div class="row-service">
                    <div class="col-service">
                        <a href=""><div class="link-service"></div></a>
                    </div>
                    <div class="col-service">
                        <a href=""><div class="link-service"></div></a>
                    </div>
                    <div class="col-service">
                        <a href=""><div class="link-service"></div></a>
                    </div>
                    <div class="col-service">
                        <a href=""><div class="link-service"></div></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div id="form-footer">
        <div class="footer-top">
            <div class="footer">
                <div class="footer-tt">
                    <div class="col-tt-footer">
                        <a class="link-hover" href="">Tích điểm Quà tặng VIP</a>
                    </div>
                    <div class="col-tt-footer">
                        <a class="link-hover" href="">Lịch sử mua hàng</a>
                    </div>
                    <div class="col-tt-footer">
                        <a class="link-hover" href="">Tìm hiểu về mua trả góp</a>
                    </div>
                    <div class="col-tt-footer">
                        <a class="link-hover" href="">Chính sách bảo hành</a>
                    </div>
                </div>
                <div class="footer-tt">
                    <div class="col-tt-footer">
                        <a class="link-hover" href="">Giới thiệu công ty (MWG.vn)</a>
                    </div>
                    <div class="col-tt-footer">
                        <a class="link-hover" href="">Tuyển dụng</a>
                    </div>
                    <div class="col-tt-footer">
                        <a class="link-hover" href="">Gửi góp ý, khiếu nại</a>
                    </div>
                    <div class="col-tt-footer">
                        <a class="link-hover" href="">Tìm siêu thị (3.385 shop)</a>
                    </div>
                    <div class="col-tt-footer">
                        <a class="link-hover" href="">Xem bản mobile</a>
                    </div>
                </div>
                <div class="footer-tt">
                    <div class="col-tt-footer" style="font-weight: bold">Tổng đài hỗ trợ (Miễn phí gọi)</div>
                    <div class="col-tt-footer">Gọi mua: 1800.1060 (7:30 - 22:00)</div>
                    <div class="col-tt-footer">Kỹ thuật: 1800.1763 (7:30 - 22:00)</div>
                    <div class="col-tt-footer">Khiếu nại: 1800.1062 (8:00 - 21:30)</div>
                    <div class="col-tt-footer">Bảo hành: 1800.1064 (8:00 - 21:00)</div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="bottom">
                <p>
                    © 2018. Công ty cổ phần Thế Giới Di Động. GPDKKD: 0303217354 do sở
                    KH & ĐT TP.HCM cấp ngày 02/01/2007. GPMXH: 238/GP-BTTTT do Bộ Thông Tin và Truyền Thông cấp ngày 04/06/2020.<br>

                    Địa chỉ: 128 Trần Quang Khải, P. Tân Định, Q.1, TP.Hồ Chí Minh. Điện thoại: 028 38125960.
                    Email: cskh@thegioididong.com. Chịu trách nhiệm nội dung: Huỳnh Văn Tốt.
                </p>
            </div>
        </div>
    </div>
</body>
</html>
