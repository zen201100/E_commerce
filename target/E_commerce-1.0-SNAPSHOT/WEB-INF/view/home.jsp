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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/csshome.css" type="text/css"/>
    <title>Home</title>
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

    <section>
        <div class="form-sale-pr">
            <div class="sale-product">
                <div class="sale-l">
                    <a href=""><img src="${pageContext.request.contextPath}/resources/image/slide-tet-phat-loc-vang-01-768x373.jpg" class="img-sale"></a>
                    <a href=""><img src="${pageContext.request.contextPath}/resources/image/bgw-iphone-chinh-hang-bao-hanh-24-thang-01.png" class="advertisement"></a>
                </div>
                <div class="sale-r">
                    <div class="name-km">Khuyến mãi nổi bật</div>
                    <a href=""><img src="${pageContext.request.contextPath}/resources/image/bpl-tet-phat-loc-vang-01.png" class="col-sale"></a>
                    <a href=""><img src="${pageContext.request.contextPath}/resources/image/bpl-galaxyA-1.png" class="col-sale"></a>
                    <a href=""><img src="${pageContext.request.contextPath}/resources/image/bpl-apple-watch-uu-dai-to-01.png" class="col-sale"></a>
                </div>
            </div>
        </div>

        <div class="form-pevrd">
            <div class="sale-pevrd">
                <div class="name-sale">FLASH SALE MỖI NGÀY</div>
                <div class="row-sale">
                    <div class="col-sale-everyday">
                        <a href=""><img src="${pageContext.request.contextPath}/resources/image/iphone-14.jpg" class="link-sevrd"></a>
                    </div>
                    <div class="col-sale-everyday">
                        <a href=""><img src="${pageContext.request.contextPath}/resources/image/iphone-14-pro.jpg" class="link-sevrd"></a>
                    </div>
                    <div class="col-sale-everyday">
                        <a href=""><img src="${pageContext.request.contextPath}/resources/image/iphone-14-pro-max.jpg" class="link-sevrd"></a>
                    </div>
                    <div class="col-sale-everyday">
                        <a href=""><img src="${pageContext.request.contextPath}/resources/image/iphone-14-pro-max-1tb.jpg" class="link-sevrd"></a>
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
                                    <img class="img" src="${pageContext.request.contextPath}/resources/image/${p.image}.jpg">
                                    <div class="col-item">
                                        <div class="product-name">${p.name}</div>
                                        <div class="size-pr">
                                            <div class="size">${p.size}</div>
                                        </div>
                                        <div class="gb-product">
                                            <div class="gb-cl">${p.capacity.capacity}</div>
                                            <div class="gb-cl">${p.color.color}</div>
                                        </div>
                                        <div class="price">${p.price} đ</div>
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
                        <a href=""><img src="${pageContext.request.contextPath}/resources/image/TGDD380x200-380x200-01.png" class="payment-link"></a>
                    </div>
                    <div class="col-payment">
                        <a href=""><img src="${pageContext.request.contextPath}/resources/image/VCBDesk--2--380x200-02.png" class="payment-link"></a>
                    </div>
                    <div class="col-payment">
                        <a href=""><img src="${pageContext.request.contextPath}/resources/image/380x200-380x200-03.webp" class="payment-link"></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-service">
            <div class="service">
                <div class="name-service">DỊCH VỤ TIỆN ÍCH</div>
                <div class="row-service">
                    <div class="col-service">
                        <a class="link-sv" href=""><div class="link-service" style="background: #dceeff">
                            <div class="name-sv">Mua mã thẻ cào</div>
                            <div style="font-size: 20px;color: #333333"><strong style="color: #dd0000">Giảm 3%</strong> cho mệnh giá từ 100.000 trở lên</div>
                        </div></a>
                    </div>
                    <div class="col-service">
                        <a class="link-sv" href=""><div class="link-service" style="background: #fef5cf">
                            <div class="name-sv">Dịch vụ đóng tiền</div>
                            <div style="font-size: 20px;color: #333333">Điện, Nước, Internet, Cước điện thoại trả sau</div>
                        </div></a>
                    </div>
                    <div class="col-service">
                        <a class="link-sv" href=""><div class="link-service" style="background: #ffefdb">
                            <div class="name-sv" >Mua thẻ game</div>
                            <div style="font-size: 20px;color: #333333"><strong style="color: #dd0000">Giảm 2%</strong> cho tất cả nhà mạng, áp dụng cho mệnh giá 300.000 trở lên</div>
                        </div></a>
                    </div>
                    <div class="col-service">
                        <a class="link-sv" href=""><div class="link-service" style="background: #e1fecf">
                            <div class="name-sv">Office bản quền</div>
                            <div style="font-size: 20px;color: #333333">Mua Microsoft Office giá chỉ từ 990k</div>
                        </div></a>
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
