<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 02.06.2017
  Time: 2:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>home</title>
    <link rel="stylesheet" href="/resources/css/home.css">
</head>
<body>


<div class="side">
    <ul class="menu">

        <li class="menu__list"><a href="#">${user.firstName} ${user.secondName}</a>
        </li>

        <li class="menu__list"><a href="#">Category</a>
            <ul class="menu__drop">
                <li><a href="#">Подпункт 1</a></li>
                <li><a href="#">Подпункт 2</a></li>
                <%--<li><a href="#">Подпункт 3</a></li>--%>
                <%--<li><a href="#">Подпункт 4</a></li>--%>
                <%--<li><a href="#">Подпункт 5</a></li>--%>
            </ul>
        </li>

        <li class="menu__list"><a href="#">Account</a>
            <ul class="menu__drop">
                <li><a href="/account/page">Add Account</a></li>
                <li><a href="/view/account">View Accounts</a></li>
                <%--<li><a href="#">Подпункт 3</a></li>--%>
                <%--<li><a href="#">Подпункт 4</a></li>--%>
                <%--<li><a href="#">Подпункт 5</a></li>--%>
            </ul>
        </li>

        <li class="menu__list"><a href="#">Income</a>
            <ul class="menu__drop">
                <li><a href="/add/income">Add Income</a></li>
                <li><a href="#">Подпункт 2</a></li>
                <%--<li><a href="#">Подпункт 3</a></li>--%>
                <%--<li><a href="#">Подпункт 4</a></li>--%>
                <%--<li><a href="#">Подпункт 5</a></li>--%>
            </ul>
        </li>

        <li class="menu__list"><a href="#">Spending</a>
            <ul class="menu__drop">
                <li><a href="#">Подпункт 1</a></li>
                <li><a href="#">Подпункт 2</a></li>
                <%--<li><a href="#">Подпункт 3</a></li>--%>
                <%--<li><a href="#">Подпункт 4</a></li>--%>
                <%--<li><a href="#">Подпункт 5</a></li>--%>
            </ul>
        </li>
    </ul>
</div>

<div class="log">
<a href="/logout"><button class="logout-button" type="submit ">logout</button> </a>
</div>

<div class="account"></div>


<div class="categories">
    <button type="submit" class="category1"></button>
    <button class="category2"></button>
    <button class="category2"></button>
    <button class="category2"></button>
    <button class="category3"></button>
    <button class="category4"></button>
    <button class="category4"></button>
    <button class="category4"></button>
</div>

<script src="/resources/js/jquery-3.2.1.min.js"></script>

</body>
</html>
