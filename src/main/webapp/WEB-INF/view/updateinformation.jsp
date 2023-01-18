<%--
  Created by IntelliJ IDEA.
  User: Phuc Lee
  Date: 12/24/22
  Time: 11:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
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
            height: 100%;
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
        .col-acc{
            width: 50%;
        }

        .avata-lg{
            position: relative;
            display: block;
            cursor: pointer;
        }
        .form-avata{
            width: 40px;
            height: 40px;
            border-radius:50%;
            overflow: hidden;
        }
        .avata{
            width: 38.4px;
            height: 38.4px;
            border: 1px solid #fff;
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
            flex-basis: 20%;
            border-right: 1px solid #e0e0e0;
            text-align: center;
            display: block;
            position: relative;
        }
        .link-head-dow{
            text-decoration: none;
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

        .name-title{
            flex-basis: 20%;
            border-right: 1px solid #e0e0e0;
            text-align: center;
            display: block;
            position: relative;
        }
        .link-head-dow{
            text-decoration: none;
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

        .form-providers{
            display: none;
            position: absolute;
            height: 130px;
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

        .form-typephone{
            display: none;
            position: absolute;
            height: 130px;
            width: 300px;
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

        .form-caparity-ram{
            display: none;
            position: absolute;
            height: 130px;
            width: 350px;
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

        .form-price{
            display: none;
            position: absolute;
            height: 130px;
            right: 0;
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
            box-sizing: border-box;
        }
        .name-price{
            padding: 5px 7px;
            margin: 2px;
            color: rgba(0,0,0,0.9);
            font-weight: bold;
            border: 1px solid #e0e0e0;
        }
        .name-price:hover{
            border: 1px solid #1a73e8;
        }



        .form-information{
            width: 1080px;
            margin: 0 auto;
            padding: 25px 0;
        }
        .information{
            display: flex;
            background: rgba(0,0,0,0.9);
        }
        .inf-l{
            width: 30%;
            padding: 30px 0 30px 15px;
        }
        .inf-r{
            width: 70%;
            padding: 30px;
        }

        .col-i-f{
            width: 100%;
        }

        .row-tt{
            padding: 15px 30px;
            color: #e0e0e0;
            font-size: 18px;
            cursor: pointer;
            border-radius: 4px;
            margin-right: 15px;
        }
        .row-inf{
            padding: 15px;
            color: #e0e0e0;
            font-size: 18px;
            cursor: pointer;
            border-radius: 4px;
            margin: 0 15px;
        }
        .row-inf:hover{
            background: linear-gradient(90deg,hsla(0,0%,100%,.16),hsla(0,0%,100%,0));
        }

        .row-tt-cn{
            display: none;
            padding: 15px 30px;
            color: #e0e0e0;
            font-size: 18px;
            cursor: pointer;
            border-radius: 4px;
        }
        .row-infor{
            padding: 15px 30px;
            color: #e0e0e0;
            font-size: 18px;
            cursor: pointer;
            border-radius: 4px;
        }
        .form-tt-cn{
            border-radius: 4px;
            margin-right: 15px;
        }
        .form-tt-cn:hover{
            background: linear-gradient(90deg,hsla(0,0%,100%,.16),hsla(0,0%,100%,0));
        }
        .row-tt:hover{
            background: linear-gradient(90deg,hsla(0,0%,100%,.16),hsla(0,0%,100%,0));
        }
        .row-tt-cn:hover{
            background: linear-gradient(90deg,hsla(0,0%,100%,.16),hsla(0,0%,100%,0));
        }

        .form-update-infomation{
            height: 435px;
        }
        .name-upd{
            font-size: 25px;
            color: #ffffff;
            font-weight: bold;
        }
        .avata-preview{
            width: 120px;
            margin: 0 auto;
            height: 120px;
            border-radius: 50%;
            background: #e0e0e0;
        }
        .name-user{
            color: #ffffff;
            padding: 10px;
            text-align: center;
            font-size: 20px;

        }
        .form-update{
            display: flex;
            padding-bottom: 15px;
        }
        .input-update-l{
            width: 50%;
            margin-right: 15px;
        }
        .input-update-r{
            width: 50%;
        }
        input{
            outline: 0;
            border: 0;
            background: transparent;
            width: 100%;
            padding: 15px;
            color: #ffffff;
            border: 1px solid #ffffff;
            border-radius: 4px;
        }
        input::placeholder{
            color: #e0e0e0;
        }
        .submit-update{
            width: 200px;
            background: #1a73e8;
            border: 1px solid #1a73e8;
        }
        .submit-update:hover{
            box-shadow: inset 0 0 20px rgba(255, 255, 255, .5);
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

        .form-my-account{
            display: none;
            right: 0;
            transform: translateX(54px);
            bottom: -212px;
            position: absolute;
            width: 250px;
            background: black;
            box-shadow: 0 0 20px rgba(0,0,0,0.9);
            border-radius: 4px;
            z-index: 10000;
        }
        .col-my-account{
            border-bottom: 1px solid #ffffff;
        }
        .my-account{
            padding: 10px 10px 10px;
            color: #d1d1d1;
        }
        .form-tt{
            padding-bottom:10px;
        }

    </style>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myaccount.css" type="text/css"/>--%>
    <title>Update Information</title>
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
                            <div style="width: 90px">
                                <a class="link-cart" href="cart">
                                    <div class="name-cart">
                                        <div style="width: 100%;padding: 10px 0;"><c:if test="${sessionScope.myCartNum !=0}">${sessionScope.myCartNum} </c:if></i>Giỏ hàng</div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <c:choose>
                            <c:when test="${sessionScope.customer == null}">
                                <div class="dn-dk">
                                    <div class="row-dn-dk">
                                        <a class="dn" href="login">Đăng nhập</a>
                                        <div class="chan">|</div>
                                        <a class="dk" href="registCustomer">Đăng ký</a>
                                    </div>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="col-acc">
                                    <div class="row-acc">
                                        <div class="avata-lg">
                                            <div style="display: flex">
                                                <div class="form-avata">
                                                    <div class="avata">
                                                    </div>
                                                </div>
                                                <c:choose>
                                                    <c:when test="${sessionScope.khoangtrong ==0}">
                                                        <div class="name-tt-cn" style="color: #e0e0e0;padding: 11px">
                                                                ${sessionScope.customer.fullName}
                                                        </div>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <div class="name-tt-cn" style="color: #e0e0e0;padding: 11px">
                                                                ${sessionScope.customer.fullName.substring(sessionScope.customer.fullName.lastIndexOf(" ")).trim()}
                                                        </div>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                            <div class="form-my-account">
                                                <div class="col-my-account"><a style="text-decoration: none" href="myAccount">
                                                    <div class="my-account">Tài khoản của tôi </div>
                                                </a></div>
                                                <div class="col-my-account"><a style="text-decoration: none" href="">
                                                    <div class="my-account">Kho hàng</div>
                                                </a></div>
                                                <div class="col-my-account"><a style="text-decoration: none" href="">
                                                    <div class="my-account">Lịch sử đặt hàng</div>
                                                </a></div>
                                                <div class="col-my-account"><a style="text-decoration: none" href="">
                                                    <div class="my-account">Sảm phẩm yêu thích</div>
                                                </a></div>
                                                <div class="col-my-account" ><a style="text-decoration: none" href="logoutAccount">
                                                    <div class="my-account" style="color: #1a73e8">Đăng xuất</div>
                                                </a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:otherwise>
                        </c:choose>
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
                                <c:forEach var="p" items="${listProviders}">
                                    <div class="col-providers">
                                        <a class="link-head-dow" href="providers?providerName=${p.providerName}"><div class="name-providers">${p.providerName}</div></a>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="name-title">
                        <div class="name-type">Loại điện thoại</div>
                        <div class="form-typephone">
                            <div class="row-typephone">
                                <c:forEach var="p" items="${listTypePhone}">
                                    <div class="col-typephone"><a class="link-head-dow" href="typephone?typePhone=${p.typePhone}"><div class="name-typephone">${p.typePhone}</div></a></div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="name-title">
                        <div class="name-type">Dung lượng lưu trữ</div>
                        <div class="form-caparity-ram">
                            <div class="row-caparity-ram">
                                <c:forEach var="p" items="${listCaparity}">
                                    <div class="col-caparity-ram"><a class="link-head-dow" href="capacity?capacity=${p.capacity}"><div class="name-caparity-ram">${p.capacity}</div></a></div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="name-title">
                        <div class="name-type">Giá</div>
                        <div class="form-price">
                            <div class="row-price">
                                <div class="col-price"><a class="link-head-dow" href="searchByMoney?searchByMoney=duoi5"><div class="name-price">Dưới 5 triệu</div></a></div>
                                <div class="col-price"><a class="link-head-dow" href="searchByMoney?searchByMoney=tu5den13"><div class="name-price">Từ 5-13 triệu</div></a></div>
                                <div class="col-price"><a class="link-head-dow" href="searchByMoney?searchByMoney=tu13den20"><div class="name-price">Từ 13-20 triệu</div></a></div>
                                <div class="col-price"><a class="link-head-dow" href="searchByMoney?searchByMoney=tren20"><div class="name-price">Trên 20 triệu</div></a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>









    <section>
        <div class="form-information">
            <div class="information">
                <div class="inf-l">
                    <div style="border-right: 1px solid #e0e0e0;height: 525px">
                        <div class="col-i-f">
                            <div class="form-tt-cn">
                                <div class="row-tt-cn"> Tài khoản của tôi <span style="float: right">&#10010;</span></div>
                                <div class="form-tt">
                                    <div class="row-infor"> Tài khoản của tôi <span style="float: right">&#10010;</span></div>
                                    <a style="text-decoration: none" href="myAccount"><div class="row-inf" style="background: linear-gradient(90deg,hsla(0,0%,100%,.16),hsla(0,0%,100%,0));">Thông tin cá nhân</div></a>
                                    <a style="text-decoration: none" href="changePassword"><div class="row-inf">Đổi mật khẩu</div></a>
                                    <a style="text-decoration: none" href=""><div class="row-inf">Lịch sử đăng nhập</div></a>
                                </div>

                            </div>
                            <a style="text-decoration: none" href=""><div class="row-tt"> Đổi điểm</div></a>
                            <a style="text-decoration: none" href=""><div class="row-tt"> Kho Voucher</div></a>
                            <a style="text-decoration: none" href=""><div class="row-tt"> Nạp tiền</div></a>
                            <a style="text-decoration: none" href=""><div class="row-tt"> Kho Hàng</div></a>
                            <a style="text-decoration: none" href=""><div class="row-tt"> Sảng phẩm yêu thích</div></a>
                        </div>
                    </div>
                </div>
                <div class="inf-r">
                    <div class="form-update-infomation">
                        <div class="name-upd">Cập nhật thông tin cá nhân</div>
                        <div style="padding-top: 20px">
                            <div class="avata-preview"></div>
                            <div class="name-user">${sessionScope.customer.fullName} </div>
                            <form method="post" action="updateInfor" style=" padding-top: 10px;">
                                <div class="form-update">
                                    <div class="input-update-l">
                                        <input type="text" readonly="true" value="UserID : ${sessionScope.customer.id}">
                                        <input type="hidden" name="userName" value="${sessionScope.customer.userName}">
                                    </div>
                                    <div class="input-update-r"><input type="text" name="fullname"
                                                                       placeholder="Họ và tên" value="${sessionScope.customer.fullName}"></div>
                                </div>
                                <div class="form-update">
                                    <div class="input-update-l"><input type="text" name="email"
                                                                       placeholder="Email" value="${sessionScope.customer.email}"></div>
                                    <div class="input-update-r"><input type="text" name="phone"
                                                                       placeholder="Số điện thoại" value="${sessionScope.customer.phone}"></div>
                                </div>
                                <div class="form-update">
                                    <div class="input-update-l"><input type="text" name="address"
                                                                       placeholder="Địa chỉ" value="${sessionScope.customer.address}"></div>
                                    <div class="input-update-r"><input type="text" name="city"
                                                                       placeholder="Thành phố" value="${sessionScope.customer.city}"></div>
                                </div>
                                <div class="form-update">
                                    <div class="input-update-l"><input type="text" name="district"
                                                                       placeholder="Quận / Huyện" value="${sessionScope.customer.district}"></div>
                                    <div class="input-update-r"><input type="text" name="ward"
                                                                       placeholder="Phường / Xã" value="${sessionScope.customer.ward}"></div>
                                </div>
                                <input class="submit-update" type="submit" value="Cập nhật">
                            </form>
                        </div>
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
    <script src="${pageContext.request.contextPath}/resources/js/information.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/myaccount.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/nametitle.js"></script>
</body>
</html>
