<%--
  Created by IntelliJ IDEA.
  User: Phuc Lee
  Date: 12/24/22
  Time: 7:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Register</title>
  <style>
    *{
      padding: 0;
      margin: 0;
    }
    body{
      background: #B6E3FF;
    }
    .head-top{
      padding: 15px 0;
      background: rgba(0,0,0,0.8);
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
      background: #6e7781;
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
    #regist-customer{
      width: 100%;
    }
    .regist{
      padding: 40px 0;
    }
    .regist-c{
      width: 1080px;
      margin: 0 auto;
      display: flex;
    }
    .regist-t{
      width: 100%;
      display: flex;
    }
    .regist-l{
      width: 67%;
    }
    .regist-r{
      border: 1px solid black;
      width: 33%;
      background: #6e7781;
      box-shadow: inset 0 0 20px rgba(255, 255, 255, .5);
    }
    .row-f{
      padding: 20px 0;
      text-align: center;
    }
    .title{
      color: #ffffff;
      font-weight: bold;
      font-size: 20px;
      margin-bottom: 20px;
    }
    .col-input{
      width: 280px;
      margin-bottom: 20px;
      padding: 15px;
      background: rgba(0,0,0,0.8);
      color: #ffffff;
      font-size: 15px;
    }
    .col-input::placeholder{
      color: #ffffff;
    }
    .col-submit{
      border: 1px solid #1a73e8;
      padding: 15px;
      width: 280px;
      background: #1a73e8;
      color: #ffffff;
      border-radius:2px ;
    }
    .col-submit:hover{
      box-shadow: inset 0 0 20px rgba(255, 255, 255, .5);
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
              <form action="" method="">
                <input class="search-control" type="text" name="search" placeholder="Search..." >
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
          <a href="">Hang</a>
          <a href="">Gia</a>
          <a href="">Loai dien thoai</a>
          <a href="">RAM</a>
          <a href="">Dung luong</a>
          <a href="">Pin</a>
        </div>
      </div>
    </div>
  </div>

  <div id="regist-customer">
    <div class="regist">
      <div class="regist-c">
        <div class="regist-t">
          <div class="regist-l">

          </div>

          <div class="regist-r">
            <div class="row-f">
              <div class="title">Đăng ký</div>

              <form:form modelAttribute="customer" method="post" action="">
                <form:input class="col-input" type="email" path="email" placeholder="Email"></form:input>
                <form:input class="col-input" type="text" path="userName" placeholder="Tên đăng nhập"></form:input>
                <form:input class="col-input" type="password" path="password" placeholder="Mật khẩu"></form:input>
                <input class="col-input" type="password" name="password" placeholder="Xác nhận mật khẩu">
                <input class="col-input" type="number" name="phone" placeholder="Số điện thoại">
                <input class="col-submit" type="submit" value="ĐĂMG KÝ">
              </form:form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
