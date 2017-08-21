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

            <li class="menu__list"><a href="#">Your Profile</a>
                <ul class="menu__drop">
                    <li><a href="/profile/page">Settings</a></li>
                    <li><a href="/">Info</a></li>
                    <%--<li><a href="#">Подпункт 4</a></li>--%>
                    <%--<li><a href="#">Подпункт 5</a></li>--%>
                </ul>
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

<div class="photo"><img width="1325" height="300" src="/resources/img/ftr-banner-About-Us.jpg"></div>

<div class="accounts">

    <a href="/view/account"><div class="name">${user.firstName} ${user.secondName}</div></a>

    <c:choose>
        <c:when test="${accountList.size()>=1}">
            <div class="account">${accountList.get(0).name} ${accountList.get(0).balance} ${accountList.get(0).currency.name}</div>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${accountList.size()>=2}">
            <div class="account">${accountList.get(1).name} ${accountList.get(1).balance} ${accountList.get(1).currency.name}</div>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${accountList.size()>=3}">
            <div class="account">${accountList.get(2).name} ${accountList.get(2).balance} ${accountList.get(2).currency.name}</div>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${accountList.size() <= 2}">
    <a href="/account/page"><div class="plus-1"><i class="fa fa-plus-square-o fa-2x" aria-hidden="true"></i></div></a>
        </c:when>
        <c:otherwise>
            <a href="/account/page"><div class="plus-1" style="display: none"><i class="fa fa-plus-square-o fa-2x" aria-hidden="true"></i></div></a>
        </c:otherwise>
    </c:choose>
</div>

<c:choose>
    <c:when test="${accountList.size() <= 0}">
<div class="add-your-account-or-category">Add your Account on +</div>
    </c:when>
    <c:otherwise>
        <div class="add-your-account-or-category" style="display: none">Add your Account or Category on +</div>
    </c:otherwise>
</c:choose>




<c:choose>
    <c:when test="${categoryList.size() <= 0}">
<a href="/category/page"><div class="categories">

    <div class="plus-2"><i class="fa fa-plus-square-o icon-plus-2" aria-hidden="true"></i></div>
    <div class="add-your-category">Add your Category</div>

</div></a>
    </c:when>

    <c:otherwise>
<div class="categories" style="background-color: white">

    <c:choose>
        <c:when test="${categoryList.size()>=1}">
            <a class="a" href="/view/one/category/${categoryList.get(0).id}">
                <div class="category">
                <i class="fa ${categoryList.get(0).icon} fa-3x icon" aria-hidden="true"></i>
                <div class="category-name">${categoryList.get(0).name}</div>
            </div>
            </a>
        </c:when>
    </c:choose>


    <c:choose>
        <c:when test="${categoryList.size()>=2}">
            <a class="a" href="/view/one/category/${categoryList.get(1).id}">
            <div class="category">
                <i class="fa ${categoryList.get(1).icon} fa-3x icon" aria-hidden="true"></i>
                <div class="category-name">${categoryList.get(1).name}</div>
            </div>
            </a>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${categoryList.size()>=3}">
            <a class="a" href="/view/one/category/${categoryList.get(2).id}">
            <div class="category">
                <i class="fa ${categoryList.get(2).icon} fa-3x icon" aria-hidden="true"></i>
                <div class="category-name">${categoryList.get(2).name}</div>
            </div>
            </a>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${categoryList.size()>=4}">
            <a class="a" href="/view/one/category/${categoryList.get(3).id}">
            <div class="category">
                <i class="fa ${categoryList.get(3).icon} fa-3x icon" aria-hidden="true"></i>
                <div class="category-name">${categoryList.get(3).name}</div>
            </div>
            </a>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${categoryList.size()>=5}">
            <a class="a" href="/view/one/category/${categoryList.get(4).id}">
            <div class="category">
                <i class="fa ${categoryList.get(4).icon} fa-3x icon" aria-hidden="true"></i>
                <div class="category-name">${categoryList.get(4).name}</div>
            </div>
            </a>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${categoryList.size()>=6}">
            <a class="a" href="/view/one/category/${categoryList.get(5).id}">
            <div class="category">
                <i class="fa ${categoryList.get(5).icon} fa-3x icon"></i>
                <div class="category-name">${categoryList.get(5).name}</div>
            </div>
            </a>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${categoryList.size()>=7}">
            <a class="a" href="/view/one/category/${categoryList.get(6).id}">
            <div class="category">
                <i class="fa ${categoryList.get(6).icon} fa-3x icon" aria-hidden="true"></i>
                <div class="category-name">${categoryList.get(6).name}</div>
            </div>
            </a>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${categoryList.size()>=8}">
            <a class="a" href="/view/one/category/${categoryList.get(7).id}">
            <div class="category">
                <i class=" fa ${categoryList.get(7).icon} fa-3x icon" aria-hidden="true"></i>
                <div class="category-name">${categoryList.get(7).name}</div>
            </div>
            </a>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${categoryList.size()>=9}">
            <a class="a" href="/view/one/category/${categoryList.get(8).id}">
                <div class="category">
                    <i class="fa ${categoryList.get(8).icon} fa-3x icon" aria-hidden="true"></i>
                    <div class="category-name">${categoryList.get(8).name}</div>
                </div>
            </a>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${categoryList.size()>=10}">
            <a class="a" href="/view/one/category/${categoryList.get(9).id}">
                <div class="category">
                    <i class="fa ${categoryList.get(9).icon} fa-3x icon" aria-hidden="true"></i>
                    <div class="category-name">${categoryList.get(9).name}</div>
                </div>
            </a>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${categoryList.size()>=11}">
            <a class="a" href="/view/one/category/${categoryList.get(10).id}">
                <div class="category">
                    <i class="fa ${categoryList.get(10).icon} fa-3x icon" aria-hidden="true"></i>
                    <div class="category-name">${categoryList.get(10).name}</div>
                </div>
            </a>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${categoryList.size()>=12}">
            <a class="a" href="/view/one/category/${categoryList.get(11).id}">
                <div class="category">
                    <i class=" fa ${categoryList.get(11).icon} fa-3x icon" aria-hidden="true"></i>
                    <div class="category-name">${categoryList.get(11).name}</div>
                </div>
            </a>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${categoryList.size() <= 11}">
    <a href="/category/page"><div class="plus-3"><i class="fa fa-plus-square-o fa-4x" aria-hidden="true"></i></div></a>
        </c:when>
        <c:otherwise>
            <a href="/category/page"><div class="plus-3" style="display: none"><i class="fa fa-plus-square-o fa-4x" aria-hidden="true"></i></div></a>
        </c:otherwise>
    </c:choose>
</div>

    </c:otherwise>
</c:choose>

<hr class="hr">

<script src="/resources/js/jquery-3.2.1.min.js"></script>

</body>
</html>