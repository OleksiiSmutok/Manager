<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07.08.2017
  Time: 18:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Category</title>
</head>
<body>

<c:forEach items="${categoryList}" var="category">
    <div class="accounts">${category.name}</div>
</c:forEach>

<a href="/"><button type="submit">home</button></a>

</body>
</html>
