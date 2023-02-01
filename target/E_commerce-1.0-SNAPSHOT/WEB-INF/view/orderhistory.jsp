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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/orderhistory.css" type="text/css"/>
    <title>Order History</title>
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
                                                <div class="col-my-account" style="display: flex;padding: 20px 40px">
                                                    <div>
                                                        <div class="form-avata-infor">
                                                            <a href="updateInformation"><div class="avata-infor"></div></a>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div class="userid-name" style="color: #e0e0e0;padding-left:10px;padding-bottom: 4px">
                                                            UserID : ${sessionScope.customer.id}
                                                        </div>
                                                        <div class="userid-name" style="color: #e0e0e0;padding-left:10px">
                                                                ${sessionScope.customer.fullName.trim()}
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-my-account"><a style="text-decoration: none" href="myAccount">
                                                    <div class="my-account">Tài khoản của tôi</div>
                                                </a></div>
                                                <div class="col-my-account"><a style="text-decoration: none" href="orderHistory">
                                                    <div class="my-account">Lịch sử đặt hàng</div>
                                                </a></div>
                                                <div class="col-my-account"><a style="text-decoration: none" href="">
                                                    <div class="my-account">Sản phẩm yêu thích</div>
                                                </a></div>
                                                <div class="col-my-account"><a style="text-decoration: none" href="logoutAccount">
                                                    <div class="my-account" style="color: #ffe818">Đăng xuất</div>
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
                    <div class="col-i-f">
                        <div class="form-tt-cn">
                            <div class="row-tt-cn"> Tài khoản của tôi <span style="float: right">&#10010;</span></div>
                            <div class="form-tt">
                                <div class="row-infor"> Tài khoản của tôi <span style="float: right">&#10010;</span></div>
                                <a style="text-decoration: none" href="myAccount"><div class="row-inf">Thông tin cá nhân</div></a>
                                <a style="text-decoration: none" href="changePassword"><div class="row-inf">Đổi mật khẩu</div></a>
                                <a style="text-decoration: none" href=""><div class="row-inf">Lịch sử đăng nhập</div></a>
                            </div>

                        </div>
                        <a style="text-decoration: none" href=""><div class="row-tt"> Đổi điểm</div></a>
                        <a style="text-decoration: none" href=""><div class="row-tt"> Kho Voucher</div></a>
                        <a style="text-decoration: none" href=""><div class="row-tt"> Nạp tiền</div></a>
                        <a style="text-decoration: none" href="orderHistory">
                            <div class="row-tt" style="background: linear-gradient(90deg,hsla(0,0%,100%,.16),hsla(0,0%,100%,0))">
                                Lịch sử đặt hàng
                            </div>
                        </a>
                        <a style="text-decoration: none" href=""><div class="row-tt"> Sản phẩm yêu thích</div></a>
                    </div>

                </div>
                <div class="inf-r">
                    <div class="form-infor-odhistory">
                        <div class="name-orhis">Lịch sử đặt hàng</div>
                        <c:forEach var="o" items="${orders.content}">
                            <div class="form-orderhistory">
                                <div class="col-name-product">
                                    <div class="img-product">
                                        <a href="productDetails?id=${o.orderDetails.get(0).product.id}"><img class="link-img" style="width: 100%;height: 80px" src="${pageContext.request.contextPath}/resources/image/${o.orderDetails.get(0).product.image}.jpg"></a>
                                    </div>
                                    <div class="row-product">
                                        <div class="col-infor"><a href="productDetails?id=${o.orderDetails.get(0).product.id}" style="text-decoration: none">
                                            <div class="name-oddt"  style="color: #ffefdb">${o.orderDetails.get(0).product.name}</div></a>
                                        </div>
                                        <div class="col-infor">Màu: ${o.orderDetails.get(0).product.color.color}</div>
                                        <div class="col-infor">Dung lượng: ${o.orderDetails.get(0).product.capacity.capacity}</div>
                                    </div>
                                </div>

                                <div class="col-tt-price">
                                    <div style="width: 50%">
                                        <div style="color: #e0e0e0;text-align: center;transform: translateY(28px)">x${o.orderDetails.get(0).quantity}</div>
                                    </div>
                                    <div style="width: 50%">
                                        <div style="color: #e0e0e0;float: right;transform: translateY(28px)">${currencyFormat.format(o.orderDetails.get(0).unitPrice)}</div>
                                    </div>
                                </div>

                            </div>
                            <div class="total-product">
                                <div class="size-product">${o.totalProduct} sản phẩm</div>
                                <div class="total-price">
                                    <div class="name-oddt" style="float: right">Thành tiền : <span style="color: #dd0000">${currencyFormat.format(o.totalPrice)}</span></div>
                                </div>
                            </div>
                            <div class="see-more">
                                <a style="text-decoration: none" href="orderDetail?orderID=${o.id}"><div class="name-see-more">Xem chi tiết sản phẩm</div></a>
                            </div>
                        </c:forEach>
                        <c:if test="${orders.totalPages * orders.size > 8}">
                            <nav class="home-page" aria-label="Page navigation example">
                                <div class="page-item">
                                    <a class="page-link" href="orderHistory?page=0">&laquo;</a>
                                    <c:choose>
                                        <c:when test="${orders.number==0}">
                                            <a class="page-link" href="orderHistory?page=0">&lsaquo;</a>
                                        </c:when>
                                        <c:otherwise>
                                            <a class="page-link" href="orderHistory?page=${orders.number-1}">&lsaquo;</a>
                                        </c:otherwise>
                                    </c:choose>

                                    <c:choose>
                                        <c:when test="${orders.number==orders.totalPages-1}">
                                            <a class="page-link" href="orderHistory?page=${orders.totalPages-1}">&rsaquo;</a>
                                        </c:when>
                                        <c:otherwise>
                                            <a class="page-link" href="orderHistory?page=${orders.number+1}">&rsaquo;</a>
                                        </c:otherwise>
                                    </c:choose>
                                    <a class="page-link" href="orderHistory?page=${orders.totalPages-1}">&raquo;</a>
                                </div>
                            </nav>
                        </c:if>
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
    <script src="${pageContext.request.contextPath}/resources/js/jsinformation.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/myaccount.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/nametitle.js"></script>
</body>
</html>
