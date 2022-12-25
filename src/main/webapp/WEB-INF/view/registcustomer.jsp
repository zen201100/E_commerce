<%--
  Created by IntelliJ IDEA.
  User: Phuc Lee
  Date: 12/24/22
  Time: 7:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
  <style>
    *{
      padding: 0;
      margin: 0;
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
      background: #B6E3FF;

    }
    .regist{
      width: 1080px;
      margin: 0 auto;

    }
    /*.regist-c{*/
    /*  border: 1px solid black;*/
    /*  width: 280px;*/
    /*  float: right;*/
    /*  margin-top: 30px;*/
    /*}*/
    .row-l{
      width: 69.66669%;
    }
    .row-r{
      border: 1px solid black;
      width: 30%;
    }
    .col-input{
      width: 200px;
      margin-bottom: 10px;
      padding: 6px;
    }
    .col-submit{
      padding: 6px;
      width: 200px;
    }
    .title{
      font-size: 20px;
      margin-bottom: 20px;
    }
  </style>
</head>
<body>
  <div id="head">
    <div class="head-top">
      <div class="container">
        <div class="row-cs">
          <div class="logo">
            <a style="color: #ffffff" href="">PHUCTAI</a>
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
              <a class="dn" href="">Đăng nhập</a>
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
        <div class="row-l">
        </div>

        <div class="row-r">
          <div class="title">Đăng ký</div>
          <form method="" action="">
            <input class="col-input" type="email" name="email" placeholder="Email">
            <input class="col-input" type="text" name="username" placeholder="User name">
            <input class="col-input" type="text" name="password" placeholder="Password">
            <input class="col-input" type="text" name="password" placeholder="Confirm password">
            <input class="col-input" type="text" name="email" placeholder="Phone">
            <br>
            <input class="col-submit" type="button" value="Rigest">
          </form>
        </div>
      </div>
    </div>
  </div>
</body>
</html>