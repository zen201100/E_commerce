<%--
  Created by IntelliJ IDEA.
  User: Phuc Lee
  Date: 01/17/23
  Time: 10:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Admin</title>
</head>
<body>
    <h1>WELCOME TO PAGE ADMIN</h1>

    <table width="50%" border="true">
        <c:forEach var="o" items="${orderProsessing}">
            <tr>
                <td>${o.customer.fullName}</td>
                <td><a href="orderConfirmation?id=${o.id}">Xác nhận</a> </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
