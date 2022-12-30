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
  <title>Product</title>
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
      background: #f3f3f3;
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
      color: rgba(0,0,0,0.9);
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
      flex-basis: 14.28571428%;
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

    .sale-product{
      width: 1080px;
      margin: 0 auto;
      display: flex;
      padding: 25px 0;
      box-sizing: border-box;
    }
    .sale-l{
      width: 65%;
      margin-right:4px ;
    }
    .sale-r{
      width: 35%;
      margin-left: 4px;
    }
    .col-sale{
      margin-bottom: 6px;
      height: 100px;
      background: #ff685f;;
    }
    .img-sale{
      background: #1a73e8;
      height: 206px;
    }
    .product{
      padding-bottom: 25px;
    }
    .b-color{
      width: 1080px;
      margin: 0 auto;
      background: rgba(0,0,0,0.9);
    }
    .form-size-product{
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
      flex-wrap: wrap;
    }
    .gb-pr{
      border: 1px solid #ffffff;
      margin-right: 2px;
      margin-bottom: 2px;
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
          <div class="name-title">
            <a href="product"><div class="name-type">Điện thoại</div></a>
          </div>
          <div class="name-title"><a href="product"><div class="name-type">Hãng</div></a>
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
          </div>
          <div class="name-title">
            <a href="product"><div class="name-type">RAM</div></a>
          </div>
          <div class="name-title">
            <a href="product"><div class="name-type">Dung lượng</div></a>
          </div>
          <div class="name-title">
            <a href="product"><div class="name-type">Pin</div></a>
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
        </div>
        <div class="sale-r">
          <a href=""><div class="col-sale"></div></a>
          <a href=""><div class="col-sale"></div></a>
        </div>
      </div>
    </div>

    <div class="product">
      <div class="b-color">
        <div class="form-size-product">
          <div class="size-product">Hiện có ${sizeProduct} Điện thoại</div>
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
                        <div class="gb-pr">${p.capacity.capacity}</div>
                        <c:choose>
                          <c:when test="${p.capacity.capacity_one != null}">
                            <div class="gb-pr">${p.capacity.capacity_one}</div>
                          </c:when>
                          <c:otherwise>
                            <div></div>
                          </c:otherwise>
                        </c:choose>
                        <c:choose>
                          <c:when test="${p.capacity.capacity_two != null}">
                            <div class="gb-pr">${p.capacity.capacity_two}</div>
                          </c:when>
                          <c:otherwise>
                            <div></div>
                          </c:otherwise>
                        </c:choose>
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
              <a class="page-link" href="product?page=0">&laquo;</a>
              <c:choose>
                <c:when test="${productPage.number >3}">
                  <a class="page-link" href="product?page=${productPage.number-3}">${productPage.number-3}</a>
                  <a class="page-link" href="product?page=${productPage.number-1}">${productPage.number-1}</a>
                  <a class="page-link" style="border: 1px solid #1a73e8 ;color: #1a73e8" href="product?page=${productPage.number}">${productPage.number}</a>
                  <a class="page-link" href="product?page=${productPage.number+1}">${productPage.number+1}</a>
                  <a class="page-link" href="product?page=${productPage.number+3}">${productPage.number+3}</a>
                </c:when>
                <c:otherwise>
                  <c:choose>
                    <c:when test="${productPage.number==1}">
                      <a class="page-link" style="border: 1px solid #1a73e8 ;color: #1a73e8" href="product?page=1">1</a>
                    </c:when>
                    <c:otherwise>
                      <a class="page-link" href="product?page=1">1</a>
                    </c:otherwise>
                  </c:choose>
                  <c:choose>
                    <c:when test="${productPage.number==2}">
                      <a class="page-link" style="border: 1px solid #1a73e8 ;color: #1a73e8" href="product?page=2">2</a>
                    </c:when>
                    <c:otherwise>
                      <a class="page-link" href="product?page=2">2</a>
                    </c:otherwise>
                  </c:choose>
                  <c:choose>
                    <c:when test="${productPage.number==3}">
                      <a class="page-link" style="border: 1px solid #1a73e8 ;color: #1a73e8" href="product?page=3">3</a>
                    </c:when>
                    <c:otherwise>
                      <a class="page-link" href="product?page=3">3</a>
                    </c:otherwise>
                  </c:choose>
                  <a class="page-link" href="product?page=4">4</a>
                  <a class="page-link" href="product?page=5">5</a>
                </c:otherwise>
              </c:choose>
              <a class="page-link" href="product?page=${productPage.totalPages-1}">&raquo;</a>
            </div>
          </nav>
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
