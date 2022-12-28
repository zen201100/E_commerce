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
        .provider-pr{
            display: flex;
        }
        .prov{
            text-decoration: none;
            font-size: 14px;
            color: #1a73e8;
            padding: 6px 0
        }
        .form-np{
            padding-bottom: 15px;
            border-bottom: 1px solid rgba(0,0,0,0.8);
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
            width: 1080px;
            margin: 0 auto;
            display: flex;
            box-sizing: border-box;
        }
        .col-l{
            width: 60%;
            padding-right:5px;
            margin-right: 5px;
            border: 1px solid black;
        }
        .col-r{
            width: 40%;
            padding-left: 5px;
            margin-left: 5px;
            border: 1px solid black;
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
            color: #1a73e8;
            font-weight: bold;
        }
        .cf-pr{
            border: 1px solid black;
        }
        .form-config{
            width: 100%;
        }
        .col-config{
            padding: 10px 5px;
            display: flex;
            box-sizing: border-box;
        }
        .config-l{
            width:35%;
        }
        .config-r{
            width: 65%;
        }
        .config-name{
            font-size: 20px;
            font-weight: bold;
            padding: 6px 0;
        }
        .form-ordbuy{
            width: 100%;
        }
        .row-ordbuy{
            padding: 5px 0;
            display: flex;
            box-sizing: border-box;
            width: 100%;
        }
        .ordbuy-l{
            width: 50%;
            margin-right: 2px;
        }
        .ordbuy-r{
            width: 50%;
            margin-left: 2px;
        }
        .ordbuy{
            text-align: center;
            padding: 10px 0;
            background: #1a73e8;
            font-size: 15px;
            font-weight: bold;
            color: #ffffff;
        }
        .or-b{
            text-decoration: none;
        }
        .ordbuy:hover{
            box-shadow: inset 0 0 20px rgba(255, 255, 255, .5);
            color: rgba(0,0,0,0.8);
        }
        .config-ct{
            width: 100%;
        }
        .footer{
            width: 1080px;
            height: 300px;

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
            <div class="provider-pr">
                <a href="home" class="prov">Điện thoại</a>
                <div style="margin:0 6px;padding-top: 2px ;font-size: 20px ">›</div>
                <a href="" class="prov">Điện thoại ${productDetails.providers.providerName}</a>
            </div>
            <div class="form-np">
                <div class="name-pr">Điện thoại ${productDetails.name}</div>
            </div>
            <div class="row-pr">
                <div class="col-l">

                </div>
                <div class="col-r">
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
                        <div class="form-config">
                            <div class="config-name">Cấu hình Điện thoại ${productDetails.name} </div>
                            <div class="cf-pr">
                                <div class="col-config">
                                    <div class="config-l">Màn hình:</div>
                                    <div class="config-r">
                                        <div class="config-ct">${productDetails.size}</div>
                                    </div>
                                </div>
                                <div class="col-config">
                                    <div class="config-l">Hệ điều hành:</div>
                                    <div class="config-r">iOS 16</div>
                                </div>
                                <div class="col-config">
                                    <div class="config-l">Cammera sau:</div>
                                    <div class="config-r">Chính 48 MP & Phụ 12 MP, 12 MP</div>
                                </div>
                                <div class="col-config">
                                    <div class="config-l">Cammera trước:</div>
                                    <div class="config-r">12 MP</div>
                                </div>
                                <div class="col-config">
                                    <div class="config-l">Chip:</div>
                                    <div class="config-r">Apple A16 Bionic</div>
                                </div>
                                <div class="col-config">
                                    <div class="config-l">Dung lượng:</div>
                                    <div class="config-r">8GB-128GB</div>
                                </div>
                                <div class="col-config">
                                    <div class="config-l">SIM:</div>
                                    <div class="config-r">1 Nano SIM & 1 eSIMHỗ trợ 5G</div>
                                </div>
                                <div class="col-config">
                                    <div class="config-l">Pin, Sạc:</div>
                                    <div class="config-r">4323 mAh20 W</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-ordbuy">
                            <div class="row-ordbuy">
                                <div class="ordbuy-l">
                                    <a class="or-b" href=""><div class="ordbuy">THÊM GIỎ HÀNG</div></a>
                                </div>
                                <div class="ordbuy-r">
                                    <a class="or-b" href=""><div class="ordbuy">MUA NGAY</div></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="form-footer">
        <div class="footer"></div>
    </div>
</body>
</html>
