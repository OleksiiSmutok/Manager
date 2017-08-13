<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10.08.2017
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Category</title>
</head>
<body>
<div>${category.name} ${category.sum}</div>
<c:forEach items="${spendingList}" var="spending">
    <div class="spendings"> ${spending.description} ${spending.sum} ${spending.date}</div>
</c:forEach>

<a href="/"><button type="submit">home</button></a>

</body>
</html>
