<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 04.08.2017
  Time: 1:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Account</title>
</head>
<body>

<form action="/add/account" method="post">
    <div class="add-account-form">
        <input name="accountName" placeholder="Account Name">
        <input name="balance" placeholder="Balance">
        <button type="submit">Confirm</button>
    </div>
</form>

<a href="/"><button type="submit">Home</button></a>

</body>
</html>
