<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10.08.2017
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Category</title>
    <link rel="stylesheet" href="/resources/css/viewOneCategory.css">
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
</div>

<div class="log">
    <a href="/logout"><button class="logout-button" type="submit ">Logout</button> </a>
</div>

<div class="category-sum">${category.name} ${category.sum}</div>


<c:choose>
    <c:when test="${spendingList.size() <= 0}">
<div class="add-your-spending">No spending</div>
    </c:when>
    <c:otherwise>
        <div class="add-your-spending" style="display: none">No spending</div>
    </c:otherwise>
</c:choose>


<div class="spending">
<c:forEach items="${spendingList}" var="spending">

    <div class="spendings">

        <div class="description">${spending.account.name}</div>

        <div class="description">${spending.description}</div>

        <div class="description">${spending.sum}</div>

        <div class="description">${spending.date}</div>

        <i class="fa fa-wrench fa-2x update" aria-hidden="true"></i>

        <i class="fa fa-trash-o fa-2x delete" aria-hidden="true"></i>

    </div>

</c:forEach>
</div>

<div class="input-form">
    <form action="/add/spending/to/one/category/${category.id}" method="post">

        <input class="input-group" type="text" name="sum" placeholder="Sum">
        <input class="input-group" type="text" name="description" placeholder="Description">

        <select class="account-in-category" name="account">
            <c:forEach items="${accountList}" var="accounts">
                <option value="${accounts.id}">${accounts.name}</option>
            </c:forEach>
        </select>

        <button class="button-confirm" type="submit">Confirm</button>

    </form>
</div>


</body>
</html>
