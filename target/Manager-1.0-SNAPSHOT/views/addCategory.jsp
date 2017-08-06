<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07.08.2017
  Time: 1:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Category</title>
</head>
<body>

<form action="/add/category" method="post">
    <div class="add-category-form">
    <input name="categoryName" placeholder="Category Name">
    <button type="submit">Confirm</button>
    </div>
</form>

<a href="/"><button type="submit">Home</button></a>

</body>
</html>
