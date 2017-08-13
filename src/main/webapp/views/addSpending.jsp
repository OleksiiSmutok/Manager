<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08.08.2017
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Spending</title>
</head>
<body>

<form action="/add/spending" method="post">

    <select name="category">
        <c:forEach items="${categoryList}" var="categories">
            <option value="${categories.id}">${categories.name}</option>
        </c:forEach>
    </select>

    <select name="account">
        <c:forEach items="${accountList}" var="accounts">
            <option value="${accounts.id}">${accounts.name}</option>
        </c:forEach>
    </select>

    <input type="text" name="sum" placeholder="sum">
    <input type="text" name="description" placeholder="description">
    <button type="submit">Confirm</button>
</form>

<a href="/"><button type="submit">Home</button></a>

</body>
</html>
