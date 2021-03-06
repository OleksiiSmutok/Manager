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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/viewSpending.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<div class="side">
<ul class="menu">

    <li class="menu__list"><a href="/">Home</a>
    </li>

    <li class="menu__list"><a href="/view/category">Category</a>
        <ul class="menu__drop">
            <%--<li><a href="/category/page">Add Category</a></li>--%>
            <%--<li><a href="/view/category">All Categories</a></li>--%>
            <%--<li><a href="#">Подпункт 3</a></li>--%>
            <%--<li><a href="#">Подпункт 4</a></li>--%>
            <%--<li><a href="#">Подпункт 5</a></li>--%>
        </ul>
    </li>

    <li class="menu__list"><a href="/view/account">Account</a>
        <ul class="menu__drop">
            <%--<li><a href="/account/page">Add Account</a></li>--%>
            <%--<li><a href="/view/account">View Accounts</a></li>--%>
            <%--<li><a href="#">Подпункт 3</a></li>--%>
            <%--<li><a href="#">Подпункт 4</a></li>--%>
            <%--<li><a href="#">Подпункт 5</a></li>--%>
        </ul>
    </li>

    <li class="menu__list"><a href="/view/income">Income</a>
        <ul class="menu__drop">
            <%--<li><a href="/income/page">Add Income</a></li>--%>
            <%--<li><a href="/view/income">View Income</a></li>--%>
            <%--<li><a href="#">Подпункт 3</a></li>--%>
            <%--<li><a href="#">Подпункт 4</a></li>--%>
            <%--<li><a href="#">Подпункт 5</a></li>--%>
        </ul>
    </li>

    <li class="menu__list"><a href="/view/spending">Spending</a>
        <ul class="menu__drop">
            <%--<li><a href="/spending/page">Add Spending</a></li>--%>
            <%--<li><a href="/view/spending">View Spending</a></li>--%>
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

<c:choose>
    <c:when test="${spendingList.size() >= 1}">

        <div class="container">
            <canvas id="myChart"></canvas>
        </div>

        <div class="text1"><div class="text">All Your Spending</div> </div>

        <hr class="hr">

        <form action="/add/spending" method="post">
            <div class="add-spending-form1">

                <input class="input-group1" type="text" name="sum" placeholder="sum">
                <input class="input-group2" type="text" name="description" placeholder="description">

                <select class="input-group2" name="category">
                    <option disabled selected>Choose category</option>
                    <c:forEach items="${categoryList}" var="categories">
                        <option value="${categories.id}">${categories.name}</option>
                    </c:forEach>
                </select>

                <select class="input-group2" name="account">
                    <option disabled selected>Choose account</option>
                    <c:forEach items="${accountList}" var="accounts">
                        <option value="${accounts.id}">${accounts.name}</option>
                    </c:forEach>
                </select>

                <button class="button-confirm" type="submit">Confirm</button>
            </div>
        </form>

        <div class="spending">
            <c:forEach items="${spendingList}" var="spending">

                <div class="one-spending">

                    <div class="description"><div class="description-text">${spending.category.name}</div></div>

                    <div class="description">
                        <div class="des">${spending.sum}</div>
                        <div class="des">${spending.description}</div>
                    </div>

                    <div class="description"><div class="description-text">${spending.account.name}</div></div>

                    <div class="description"><div class="description-text">${spending.date}</div></div>

                    <a href="/delete/spending/${spending.id}"><i class="fa fa-trash-o fa-3x delete" aria-hidden="true"></i></a>

                </div>

            </c:forEach>
        </div>


        <div class="footer1">
            <div class="part-1">
                <a href="/"><div class="part-of">Home</div></a>
                <a href="/profile/page"><div class="part-of-foot">Your Profile</div></a>
                <a href="/view/category"><div class="part-of-foot">Category</div></a>
                <a href="/view/account"><div class="part-of-foot">Account</div></a>

            </div>

            <div class="part-2">
                <a href=""><div class="part-of">Info</div></a>
                <a href="/view/income"><div class="part-of-foot">Income</div></a>
                <a href="/view/spending"><div class="part-of-foot">Spending</div></a>
                <a href="/logout"><div class="part-of-foot">Logout</div></a>
            </div>

            <div class="part-3">
                <div class="follow-us">Follow Us</div>
                <a href="https://www.facebook.com/?stype=lo&jlou=AfczdddNIrHQvvfgizaurNe5lcj30Lr7HB0EYLok69N5dN__rBXF6cl7H-VlRk_A1z5h1waRUtaPPh62Rek99gn4W730PyGGg_x_p2VWSoVxMQ&smuh=29707&lh=Ac8Ps4PrlsCqlEb8"><i class="fa fa-facebook fa-2x footer-icon"></i></a>
                <a href="https://www.linkedin.com/"><i class="fa fa-linkedin fa-2x footer-icon"></i></a>
                <a href="https://www.instagram.com/?hl=ru"><i class="fa fa-instagram fa-2x footer-icon"></i></a>
                <a href="https://www.youtube.com/?gl=RU&hl=ru"><i class="fa  fa-youtube fa-2x footer-icon"></i></a>
            </div>
        </div>

    </c:when>

    <c:otherwise>
        <div class="text2">No Spending</div>
        <hr class="hr1">

        <form action="/add/spending" method="post">
            <div class="add-spending-form2">

                <input class="input-group1" type="text" name="sum" placeholder="sum">
                <input class="input-group2" type="text" name="description" placeholder="description">

                <select class="input-group2" name="category">
                    <option disabled selected>Choose category</option>
                    <c:forEach items="${categoryList}" var="categories">
                        <option value="${categories.id}">${categories.name}</option>
                    </c:forEach>
                </select>

                <select class="input-group2" name="account">
                    <option disabled selected>Choose account</option>
                    <c:forEach items="${accountList}" var="accounts">
                        <option value="${accounts.id}">${accounts.name}</option>
                    </c:forEach>
                </select>

                <button class="button-confirm" type="submit">Confirm</button>

            </div>
        </form>

        <div class="footer2">
            <div class="part-1">
                <a href="/"><div class="part-of">Home</div></a>
                <a href="/profile/page"><div class="part-of-foot">Your Profile</div></a>
                <a href="/view/category"><div class="part-of-foot">Category</div></a>
                <a href="/view/account"><div class="part-of-foot">Account</div></a>

            </div>

            <div class="part-2">
                <a href=""><div class="part-of">Info</div></a>
                <a href="/view/income"><div class="part-of-foot">Income</div></a>
                <a href="/view/spending"><div class="part-of-foot">Spending</div></a>
                <a href="/logout"><div class="part-of-foot">Logout</div></a>
            </div>

            <div class="part-3">
                <div class="follow-us">Follow Us</div>
                <a href="https://www.facebook.com/?stype=lo&jlou=AfczdddNIrHQvvfgizaurNe5lcj30Lr7HB0EYLok69N5dN__rBXF6cl7H-VlRk_A1z5h1waRUtaPPh62Rek99gn4W730PyGGg_x_p2VWSoVxMQ&smuh=29707&lh=Ac8Ps4PrlsCqlEb8"><i class="fa fa-facebook fa-2x footer-icon"></i></a>
                <a href="https://www.linkedin.com/"><i class="fa fa-linkedin fa-2x footer-icon"></i></a>
                <a href="https://www.instagram.com/?hl=ru"><i class="fa fa-instagram fa-2x footer-icon"></i></a>
                <a href="https://www.youtube.com/?gl=RU&hl=ru"><i class="fa  fa-youtube fa-2x footer-icon"></i></a>
            </div>
        </div>

    </c:otherwise>

</c:choose>


<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script src="/resources/js/viewSpending.js"></script>

</body>
</html>
