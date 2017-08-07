<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07.08.2017
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Income</title>
</head>
<body>

<c:forEach items="${incomeList}" var="income">
    <div class="accounts">${income.sum} ${income.description} ${income.account}</div>
</c:forEach>

<a href="/"><button type="submit">home</button></a>

</body>
</html>
