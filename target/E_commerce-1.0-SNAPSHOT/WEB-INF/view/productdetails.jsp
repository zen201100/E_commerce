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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/productdetailsstyle.css" type="text/css"/>
    <title>Product Details</title>
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
                                    <div class="col-providers"><a class="link-head-dow" href="providers?providerName=${p.providerName}"><div class="name-providers">${p.providerName}</div></a></div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="name-title">
                        <div class="name-type">Loại điện thoại</div>
                        <div class="form-typephone">
                            <div class="row-typephone">
                                <c:forEach var="p" items="${typePhone}">
                                    <div class="col-typephone"><a class="link-head-dow" href="typephone?typePhone=${p.typePhone}"><div class="name-typephone">${p.typePhone}</div></a></div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="name-title">
                        <div class="name-type">Dung lượng lưu trữ</div>
                        <div class="form-caparity-ram">
                            <div class="row-caparity-ram">
                                <c:forEach var="p" items="${caparity}">
                                    <div class="col-caparity-ram"><a class="link-head-dow" href=""><div class="name-caparity-ram">${p.capacity}</div></a></div>
                                </c:forEach>
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
                </div>
            </div>
        </div>
    </div>

    <div id="form-pr">
        <div class="pr-dt">
            <div class="provider-pr">
                <a href="product" class="prov">Điện thoại</a>
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
                            <a class="g-l" href=""><div>${productDetails.capacity.capacity}</div></a>
                            <a class="g-l" href=""><div>${productDetails.color.color}</div></a>
                        </div>
                        <div class="price-pr">
                            <div class="price">${productDetails.price} đ</div>
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
                                    <div class="config-l">Cammera sau:</div>
                                    <div class="config-r">${productDetails.camera.cameraAfter}</div>
                                </div>
                                <div class="col-config">
                                    <div class="config-l">Cammera trước:</div>
                                    <div class="config-r">${productDetails.camera.cameraBefore}</div>
                                </div>
                                <div class="col-config">
                                    <div class="config-l">Dung lượng:</div>
                                    <div class="config-r">${productDetails.capacity.capacity}</div>
                                </div>
                                <div class="col-config">
                                    <div class="config-l">SIM:</div>
                                    <div class="config-r">${productDetails.sim.sim}</div>
                                </div>
                                <div class="col-config">
                                    <div class="config-l">Pin, Sạc:</div>
                                    <div class="config-r">${productDetails.pin.pinandsac}</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-buynow">
                            <div class="row-buynow">
                                <a class="buy-now" href="addItem?productID=${productDetails.id}"><div class="buynow">MUA NGAY</div></a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

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
