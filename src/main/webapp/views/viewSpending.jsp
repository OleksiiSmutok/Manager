<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08.08.2017
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Spending</title>
    <link rel="stylesheet" href="/resources/css/viewSpending.css">
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

<c:choose>
    <c:when test="${spendingList.size() >= 1}">
        <div class="text1"><div class="text">All Your Spending</div> </div>

        <div class="spending">
            <c:forEach items="${spendingList}" var="spending">

                <div class="one-spending">


                    <div class="description">${spending.category.name}</div>

                    <div class="description">
                        <div class="des">${spending.sum}</div>
                        <div class="des">${spending.description}</div>
                    </div>

                    <div class="description">${spending.account.name}</div>

                    <div class="description">${spending.date}</div>

                    <i class="fa fa-wrench fa-3x update" aria-hidden="true"></i>

                    <i class="fa fa-trash-o fa-3x delete" aria-hidden="true"></i>

                </div>

            </c:forEach>
        </div>
        <hr class="hr">
    </c:when>

    <c:otherwise>
        <div class="text2">No Spending</div>
        <hr class="hr1">
    </c:otherwise>

</c:choose>

<%--<c:forEach items="${spendingList}" var="spending">--%>
    <%--<div class="spendings">${spending.category.name} ${spending.sum} ${spending.description} ${spending.account.name} ${spending.date}</div>--%>
<%--</c:forEach>--%>

<%--<a href="/"><button type="submit">home</button></a>--%>

</body>
</html>
