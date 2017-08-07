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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>


<div class="side">
    <ul class="menu">

        <li class="menu__list"><a href="/">Home</a>
        </li>

        <li class="menu__list"><a href="#">Category</a>
            <ul class="menu__drop">
                <li><a href="/category/page">Add Category</a></li>
                <li><a href="/view/category">View Category</a></li>
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
                <li><a href="/income/page">Add Income</a></li>
                <li><a href="/view/income">View Income</a></li>
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

<div class="user">
    <div class="name">${user.firstName} ${user.secondName}</div>
</div>


<div class="categories">

    <c:choose>
        <c:when test="${categoryList.size()>=1}">
            <div class="category">
                <i class="fa fa-film fa-3x" aria-hidden="true"></i>
                <div class="category-name">${categoryList.get(0).name}</div>
            </div>
        </c:when>
    </c:choose>


    <c:choose>
        <c:when test="${categoryList.size()>=2}">
            <div class="category">
                <i class="fa fa-graduation-cap fa-3x" aria-hidden="true"></i>
                <div class="category-name">${categoryList.get(1).name}</div>
            </div>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${categoryList.size()>=3}">
            <div class="category">
                <i class="fa fa-heartbeat fa-3x" aria-hidden="true"></i>
                <div class="category-name">${categoryList.get(2).name}</div>
            </div>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${categoryList.size()>=4}">
            <div class="category">
                <i class="fa fa-home fa-3x" aria-hidden="true"></i>
                <div class="category-name">${categoryList.get(3).name}</div>
            </div>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${categoryList.size()>=5}">
            <div class="category">
                <i class="fa fa-cutlery fa-3x" aria-hidden="true"></i>
                <div class="category-name">${categoryList.get(4).name}</div>
            </div>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${categoryList.size()>=6}">
            <div class="category">
                <i class="fa fa-gift fa-3x"></i>
                <div class="category-name">${categoryList.get(5).name}</div>
            </div>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${categoryList.size()>=7}">
            <div class="category">
                <i class="fa fa-gamepad fa-3x" aria-hidden="true"></i>
                <div class="category-name">${categoryList.get(6).name}</div>
            </div>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${categoryList.size()>=8}">
            <div class="category">
                <i class="fa fa-internet-explorer fa-3x" aria-hidden="true"></i>
                <div class="category-name">${categoryList.get(7).name}</div>
            </div>
        </c:when>
    </c:choose>

    <%--<div class="category"></div>--%>
    <%--<div class="category"></div>--%>
    <%--<div class="category"></div>--%>
    <%--<div class="category"></div>--%>
    <%--<div class="category"></div>--%>
    <%--<div class="category"></div>--%>
</div>

<script src="/resources/js/jquery-3.2.1.min.js"></script>

</body>
</html>
