<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="/resources/css/addAccount.css">
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

<div class="photo"><img width="1325" height="300" src="/resources/img/payments_cardservices.jpg"></div>

<form action="/add/account" method="post">
    <div class="add-account-form">

        <input class="input-group" name="accountName" placeholder="Account Name">
        <input class="input-group" name="balance" placeholder="Balance">

        <select class="currency-in-account" name="currency">
            <c:forEach items="${currencyList}" var="currencys">
            <option value="${currencys.id}">${currencys.name}</option>
            </c:forEach>
        </select>

        <button class="button-confirm" type="submit">Confirm</button>

    </div>
</form>

<hr class="hr">

</body>
</html>
