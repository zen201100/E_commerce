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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cart.css" type="text/css"/>
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
        <div class="form-cart">
            <div class="shopping-cart">
                <c:choose>
                    <c:when test="${count==0}">
                        <div class="form-empty-cart">
                            <div class="empty-cart" style="padding-top: 20px">Không có sản phẩm nào trong giỏ hàng</div>
                            <div style="margin: 10px 50px">
                                <a style="text-decoration: none" href="home">
                                    <div class="home-cart">VỀ TRANG CHỦ</div>
                                </a> </div>
                            <div style="padding-bottom:20px ">Khi cần trợ giúp vui lòng gọi 1800.1060 hoặc 028.3622.1060 (7h30 - 22h)</div>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="c" items="${cartItem}">
                            <div class="cart-item">
                                <div class="col-name-product">
                                    <div class="img-product">
                                        <a href="productDetails?id=${c.product.id}"><img class="link-img" style="width: 100%;height: 80px" src=""></a>
                                    </div>
                                    <div class="row-product">
                                        <div class="col-infor"><a href="productDetails?id=${c.product.id}" style="text-decoration: none"><div class="name-prod">${c.product.name}</div></a></div>
                                        <div class="col-infor">Màu: ${c.product.color.color}</div>
                                        <div class="col-infor">Dung lượng: ${c.product.capacity.capacity}</div>
                                    </div>
                                </div>
                                <div class="col-cart">
                                    <div style="color: #333333;float: left;padding-top: 30px">${c.product.price.unitPrice} <strong style="color: #1a73e8">đ</strong></div>
                                </div>
                                <div class="col-cart">
                                    <div class="quantity">
                                        <c:choose>
                                            <c:when test="${c.quantity==1}">
                                                <div class="amount-quantity" style="color: #e0e0e0" >-</div>
                                            </c:when>
                                            <c:otherwise>
                                                <a style="text-decoration: none" href="updateItem?productID=${c.product.id}&quantity=-1">
                                                    <div class="amount-quantity">
                                                        <div class="quantity-ct">-</div>
                                                    </div>
                                                </a>
                                            </c:otherwise>
                                        </c:choose>
                                        <input class="input-quantity" readonly="true" type="text" value="${c.quantity}">
                                        <c:choose>
                                            <c:when test="${c.quantity==c.product.quantity}">
                                                <div class="amount-quantity" style="color: #e0e0e0" >+</div>
                                            </c:when>
                                            <c:otherwise>
                                                <a style="text-decoration: none" href="updateItem?productID=${c.product.id}&quantity=1">
                                                    <div class="amount-quantity">
                                                        <div class="quantity-ct">+</div>
                                                    </div>
                                                </a>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                                <div class="col-delete">
                                    <a style="text-decoration: none" href="removeItem?productID=${c.product.id}">
                                        <div style="color: #dd0000;padding-top: 30px">Xóa</div>
                                    </a>
                                </div>
                            </div>
                        </c:forEach>
                        <div class="total-product">
                            <c:if test="${count!=0}">
                                <div class="size-cart">Tạm tính (${count} sản phầm)</div>
                            </c:if>
                            <c:if test="${totalPrice!=0}">
                                <div class="total-price">
                                    <div style="float: right;font-weight: bold">Thành tiền: <strong style="color: #dd0000">${totalPrice}</strong> đ</div>
                                </div>
                            </c:if>
                        </div>
                        <div class="infor-order">
                            <form action="" method="">
                                <div style="font-weight: bold;font-size: 15px">THÔNG TIN KHÁCH HÀNG</div>
                                <div class="infor-numberphone">
                                    <div class="infor-name"><input class="input-infor-number" type="text" name="name" placeholder="Họ và Tên"></div>
                                    <div class="infor-number"><input class="input-infor-number" type="text" name="numberphone" placeholder="Số điện thoại"></div>
                                </div>
                                <div class="place-cart">
                                    <div>Chọn địa chỉ để biết thời gian nhận hàng và phí vận chuyển (nếu có)</div>
                                    <div class="row-address">
                                        <div class="addess-phuong"><input class="input-address" type="text" name="thanhpho" placeholder="Thành phố"></div>
                                        <div class="addess-huyen"><input class="input-address" type="text" name="quan" placeholder="Quận / Huyện"></div>
                                    </div>
                                    <div class="row-address">
                                        <div class="addess-phuong"><input class="input-address" type="text" name="phuong" placeholder="Phường / Xã"></div>
                                        <div class="addess-huyen"><input class="input-address" type="text" name="address" placeholder="Số nhà, tên đường"></div>
                                    </div>
                                </div>
                                <input style="width: 100%;padding: 10px;margin: 15px 0" type="text" name="need" placeholder="Yêu cầu khác (không bắt buộc)"><br>
                                <input type="checkbox" name="noteOne" value="Gọi người khác nhận hàng (nếu có)">
                                <label >Gọi người khác nhận hàng (nếu có)</label><br>
                                <input type="checkbox" name="noteTwo" value="Chuyển danh bạ, dữ liệu qua máy mới">
                                <label >Chuyển danh bạ, dữ liệu qua máy mới</label><br>
                                <input type="checkbox" name="noteThree" value="Xuất hóa đơn công ty">
                                <label >Xuất hóa đơn công ty</label>
                            </form>
                        </div>
                        <div class="order-product">
                            <div class="row-total-price">
                                <div class="name-total">
                                    <div style="color: #333333;font-weight: bold">Tổng tiền:</div>
                                </div>
                                <div class="price-total">
                                    <div style="float: right;color: #dd0000;font-weight: bold">${totalPrice} đ</div>
                                </div>
                            </div>
                            <div>
                                <input class="submit-order" type="submit" value="ĐẶT HÀNG">
                            </div>
                        </div>
                    </c:otherwise>
                </c:choose>
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

