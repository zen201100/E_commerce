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
            color: #333333;
            font-size: 15px;
        }
        .search input::placeholder {
            color: rgba(0,0,0,0.9);
        }
        .submit-search{
            padding: 0 5px;
            border: 0;
            background: #e0e0e0;
            border-radius: 4px;
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
        .name-title{
            flex-basis: 12.5%;
            border-right: 1px solid #e0e0e0;
            text-align: center;
        }
        .link-head-dow{
            text-decoration: none;
        }
        .name-title{
            display: block;
            position: relative;
        }
        .name-type{
            cursor: pointer;
            font-size: 16px;
            padding: 8px 0;
            color: rgba(0,0,0,0.9);
        }
        .name-type:hover{
            color: #1a73e8;
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

        .product{
            padding: 25px 0;
        }
        .form-size-product{
            width:1080px;
            margin: 0 auto;
        }
        .search-fal{
            margin-left: 350px;
            padding: 50px 0
        }
        .name-gy{
            font-size: 20px;
            font-weight: bold;
            color: #ffe818;
        }
        .search-pr-fal{
            margin: 10px 0;
            line-height: 20px;
            padding-left: 17px;
        }
        .title-false{
            color: #ffffff;
        }

        .b-color{
            width: 1080px;
            margin: 0 auto;
            background: rgba(0,0,0,0.9);
        }

        .size-product{
            color: #ffffff;
            font-size: 15px;
            font-weight: bold;
            padding: 10px 0;
            margin-left: 8px;
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
        .home-page{
            width: 1080px;
            margin: 0 auto;
            padding: 20px 0;
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
                                <input class="submit-search" type="submit">
                            </form>
                        </div>
                    </div>

                    <div class="col-dndk">
                        <div class="cart">
                            <a class="link-cart" href="cart"><div class="name-cart"><c:if test="${count !=0}">${count} </c:if>Giỏ hàng</div></a>
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
                        <a class="link-head-dow" href="product"><div class="name-type">Điện thoại</div></a>
                    </div>
                    <div class="name-title">
                        <div class="name-type">Hãng</div>
                        <div class="form-providers">
                            <div class="row-providers">
                                <c:forEach var="p" items="${providers}">
                                    <div class="col-providers"><a class="link-head-dow" href=""><div class="name-providers">${p.providerName}</div></a></div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="name-title">
                        <div class="name-type">Giá</div>
                        <div class="form-price">
                            <div class="row-price">
                                <div class="col-price"><a class="link-head-dow" href=""><div class="name-price">Dưới 2 triệu</div></a></div>
                                <div class="col-price"><a class="link-head-dow" href=""><div class="name-price">Từ 2-4 triệu</div></a></div>
                                <div class="col-price"><a class="link-head-dow" href=""><div class="name-price">Từ 4-7 triệu</div></a></div>
                                <div class="col-price"><a class="link-head-dow" href=""><div class="name-price">Từ 7-13 triệu</div></a></div>
                                <div class="col-price"><a class="link-head-dow" href=""><div class="name-price">Từ 13-20 triệu</div></a></div>
                                <div class="col-price"><a class="link-head-dow" href=""><div class="name-price">Trên 20 triệu</div></a></div>
                            </div>
                        </div>
                    </div>
                    <div class="name-title">
                        <div class="name-type">Loại điện thoại</div>
                        <div class="form-typephone">
                            <div class="row-typephone">
                                <c:forEach var="p" items="${typePhone}">
                                    <div class="col-typephone"><a class="link-head-dow" href=""><div class="name-typephone">${p.typePhone}</div></a></div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="name-title">
                        <div class="name-type">Dung lượng</div>
                        <div class="form-caparity-ram">
                            <div class="row-caparity-ram">
                                <c:forEach var="p" items="${caparity}">
                                    <div class="col-caparity-ram"><a class="link-head-dow" href=""><div class="name-caparity-ram">${p.capacity}</div></a></div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="name-title">
                        <div class="name-type">RAM</div>
                        <div class="form-caparity-ram">
                            <div class="row-caparity-ram">
                                <div class="col-caparity-ram"><a class="link-head-dow" href=""><div class="name-caparity-ram">4GB</div></a></div>
                                <div class="col-caparity-ram"><a class="link-head-dow" href=""><div class="name-caparity-ram">6GB</div></a></div>
                                <div class="col-caparity-ram"><a class="link-head-dow" href=""><div class="name-caparity-ram">8GB</div></a></div>
                                <div class="col-caparity-ram"><a class="link-head-dow" href=""><div class="name-caparity-ram">12GB</div></a></div>
                            </div>
                        </div>
                    </div>
                    <div class="name-title">
                        <div class="name-type">Pin & Sạc</div>
                        <div class="form-pin-sac-feature">
                            <div class="row-pin-sac-feature">
                                <div class="col-pin-sac-feature"><a class="link-head-dow" href=""><div class="name-pin-sac-feature">Pin khủng trên 5000 mAh</div></a></div>
                                <div class="col-pin-sac-feature"><a class="link-head-dow" href=""><div class="name-pin-sac-feature">Sạc nhanh (từ 18W)</div></a></div>
                                <div class="col-pin-sac-feature"><a class="link-head-dow" href=""><div class="name-pin-sac-feature">Sạc siêu nhanh (từ 33W)</div></a></div>
                                <div class="col-pin-sac-feature"><a class="link-head-dow" href=""><div class="name-pin-sac-feature">Sạc không dây</div></a></div>
                            </div>
                        </div>
                    </div>
                    <div class="name-title">
                        <div class="name-type">Tính năng đặc biệt</div>
                        <div class="form-pin-sac-feature">
                            <div class="row-pin-sac-feature">
                                <div class="col-pin-sac-feature"><a class="link-head-dow" href=""><div class="name-pin-sac-feature">Kháng nước,bụi</div></a></div>
                                <div class="col-pin-sac-feature"><a class="link-head-dow" href=""><div class="name-pin-sac-feature">Hỗ trợ 5G</div></a></div>
                                <div class="col-pin-sac-feature"><a class="link-head-dow" href=""><div class="name-pin-sac-feature">Bảo mật khuôn mặt 3D</div></a></div>
                                <div class="col-pin-sac-feature"><a class="link-head-dow" href=""><div class="name-pin-sac-feature">Chống rung quang học</div></a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section>
        <div class="product">
            <div class="b-color">
                <div class="form-size-product">
                    <c:choose>
                        <c:when test="${sizeSearchProduct==0}">
                            <div class="size-product">Rất tiếc, không tìm thấy kết quả nào phù hợp với từ khóa <strong
                                    style="font-size: 15px;font-weight: bold;color: #ffe818">"${searchproduct}"</strong>
                            </div>
                            <div class="form-search-fal">
                                <div class="search-fal">
                                    <div class="name-gy">Để tìm được kết quả chính xác hơn, bạn vui lòng:</div>
                                    <ul class="search-pr-fal">
                                        <li class="title-false">Kiểm tra lỗi chính tả của từ khóa đã nhập</li>
                                        <li class="title-false">Thử lại bằng từ khóa khác</li>
                                        <li class="title-false">Thử lại bằng những từ khóa tổng quát hơn</li>
                                        <li class="title-false">Thử lại bằng những từ khóa ngắn gọn hơn</li>
                                    </ul>
                                </div>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="size-product">Tìm thấy ${sizeSearchProduct} sản phẩm:</div>
                        </c:otherwise>
                    </c:choose>
                </div>
                <div class="row-p">
                    <c:forEach var="p" items="${productPage.content}">
                        <div class="col-p">
                            <div class="product-item">
                                <a class="main-contain" href="productDetails?id=${p.id}">
                                    <img class="img" src="">
                                    <div class="col-item">
                                        <div class="product-name">${p.name}</div>
                                        <div class="capacity">
                                            <div class="size-pr">
                                                <div class="size">${p.size}</div>
                                                <div class="size">${p.screen.screen}</div>
                                            </div>
                                            <div class="gb-product">
                                                <div class="gb-cl">${p.capacity.capacity}</div>
                                                <div class="gb-cl">${p.color.color}</div>
                                            </div>
                                        </div>
                                        <div class="price">${p.price.unitPrice} đ</div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                    <c:if test="${sizeSearchProduct != 0}">
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
                    </c:if>

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
