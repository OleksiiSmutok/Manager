<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05.08.2017
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Account</title>
</head>
<body>

<c:forEach items="${accountList}" var="account">
<div class="accounts">${account.name} ${account.balance}</div>
</c:forEach>

<a href="/"><button type="submit">home</button></a>
</body>
</html>
