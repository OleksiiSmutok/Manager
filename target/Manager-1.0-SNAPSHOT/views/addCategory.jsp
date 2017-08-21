<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="/resources/css/addCategory.css">
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
                <li><a href="/view/category">All Categories</a></li>
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
                <li><a href="/spending/page">Add Spending</a></li>
                <li><a href="/view/spending">View Spending</a></li>
                <%--<li><a href="#">Подпункт 3</a></li>--%>
                <%--<li><a href="#">Подпункт 4</a></li>--%>
                <%--<li><a href="#">Подпункт 5</a></li>--%>
            </ul>
        </li>
    </ul>
    <div class="log">
        <a href="/logout"><button class="logout-button" type="submit ">Logout</button> </a>
    </div>
</div>

<div class="photo"><img width="1325" height="300" src="/resources/img/finance.jpg"></div>

<div class="add-category-form">
    <div class="name"><input class="categoryName" type="text" placeholder="Name fo Category"></div>

<div class="all-category">
        
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-film fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-graduation-cap fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-heartbeat fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-home fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-cutlery fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-gift fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-gamepad fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-internet-explorer fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-shopping-bag fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-bus fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-wifi fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-globe fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-fighter-jet fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-university fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-coffee fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-shopping-cart fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-futbol-o fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-glass fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-taxi fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-bicycle fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-line-chart fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-paw fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-percent fa-3x icon"></i></div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-cogs fa-3x icon"></i></div>
</div>

    <button type="submit" class="button-confirm">Confirm</button>

<div class="text" style="display:none;">You are added the category</div>
</div>

<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script src="/resources/js/addCategory.js"></script>

<hr class="hr">

</body>
</html>
