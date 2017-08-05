<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05.08.2017
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Income</title>
</head>
<body>

<select name="name">
    <c:forEach items="${accountList}" var="account">
    <option value="${account.id}">${account.name}</option>
    </c:forEach>
</select>

</body>
</html>
