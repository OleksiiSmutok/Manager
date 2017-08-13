<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08.08.2017
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Spending</title>
</head>
<body>

<c:forEach items="${spendingList}" var="spending">
    <div class="spendings">${spending.category.name} ${spending.sum} ${spending.description} ${spending.account.name} ${spending.date}</div>
</c:forEach>

<a href="/"><button type="submit">home</button></a>

</body>
</html>
