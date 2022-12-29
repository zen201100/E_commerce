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
        .name-title{
            font-size: 16px;
            color: #ffffff;
            text-decoration: none;
            justify-content: space-between;
            padding: 5px;
            flex-basis: 14.28571428%;
            border-right: 1px solid #ffffff;
            text-align: center;
        }
        .sale-product{
            width: 1080px;
            margin: 0 auto;
            display: flex;
            padding: 25px 0;
            box-sizing: border-box;
        }
        .sale-l{
            background: #1a73e8;
            width: 65%;
            margin-right: 5px;
            border: 1px solid black;
            padding: 4px;
        }
        .sale-r{
            border: 1px solid black;
            width: 35%;
            margin-left: 5px;
            padding: 4px;
        }
        .col-sale{
            margin-top: 5px;
            height: 150px;
            background: #ff685f;;
        }
        .img-sale{
            background: #f1f1f1;
            height: 350px;
            margin-bottom: 8px;
        }
        .advertisement{
            background: #ff685f;
            height: 125px;
        }
        .sale-pevrd{
            width: 1080px;
            margin: 0 auto;
            padding-bottom: 10px;
            background: #ED174B;
        }
        .row-sale{
            display: flex;
            flex-wrap: wrap;
            padding: 5px 0;
        }
        .col-sale-everyday{
            flex-basis: 25%;
            box-sizing: border-box;
            padding: 4px
        }
        .link-sevrd{
            height: 470px;
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
            color:#d00;
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
            width: 1080px;
            margin: 0 auto;
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
            padding:10px;
            height: 150px;
        }
        .product-name:hover{
            color: #54a0ff;
        }
        .product-name{
            color: #ffffff;
            font-size: 16px;
        }
        .size-pr{
            display: flex;
            padding: 5px 0;
        }
        .size{
            border: 1px solid #ffffff;
            margin-right: 3px;
            padding: 0 5px;
            color: #ffffff;
        }
        .gb-product{
            display: flex;
        }
        .gb-pr{
            border: 1px solid #ffffff;
            width: 45%;
            padding: 5px;
            color: #ffffff;
            text-align: center;
        }
        .gb-pr:hover{
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
            padding: 5px 0;
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
            border-top: 1px solid #6e7781;
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
        .footer-tt a{
            text-decoration: none;
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
                    <a class="name-title" href="product">Điện thoại</a>
                    <a class="name-title" href="">Hãng</a>
                    <a class="name-title" href="">Giá</a>
                    <a class="name-title" href="">Loại điện thoại</a>
                    <a class="name-title" href="">RAM</a>
                    <a class="name-title" href="">Dung lượng</a>
                    <a class="name-title" href="">Pin</a>
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
                                            <div class="gb-pr">${p.capacity.capacity}</div>
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
                    <a href=""><div class="col-tt-footer">Tích điểm Quà tặng VIP</div></a>
                    <a href=""><div class="col-tt-footer">Lịch sử mua hàng</div></a>
                    <a href=""><div class="col-tt-footer">Tìm hiểu về mua trả góp</div></a>
                    <a href=""><div class="col-tt-footer">Chính sách bảo hành</div></a>
                </div>
                <div class="footer-tt">
                    <a href=""><div class="col-tt-footer">Giới thiệu công ty (MWG.vn)</div></a>
                    <a href=""><div class="col-tt-footer">Tuyển dụng</div></a>
                    <a href=""><div class="col-tt-footer">Gửi góp ý, khiếu nại</div></a>
                    <a href=""><div class="col-tt-footer">Tìm siêu thị (3.385 shop)</div></a>
                    <a href=""><div class="col-tt-footer">Xem bản mobile</div></a>
                </div>
                <div class="footer-tt">
                    <div class="col-tt-footer">Tổng đài hỗ trợ (Miễn phí gọi)</div>
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
