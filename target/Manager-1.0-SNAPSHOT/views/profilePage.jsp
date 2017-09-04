<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15.08.2017
  Time: 3:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
    <link rel="stylesheet" href="/resources/css/profilePage.css">
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
            </ul>
        </li>

        <li class="menu__list"><a href="/view/account">Account</a>
            <ul class="menu__drop">
                <%--<li><a href="/account/page">Add Account</a></li>--%>
                <%--<li><a href="/view/account">View Accounts</a></li>--%>
            </ul>
        </li>

        <li class="menu__list"><a href="/view/income">Income</a>
            <ul class="menu__drop">
                <%--<li><a href="/income/page">Add Income</a></li>--%>
                <%--<li><a href="/view/income">View Income</a></li>--%>
            </ul>
        </li>

        <li class="menu__list"><a href="/view/spending">Spending</a>
            <ul class="menu__drop">
                <%--<li><a href="/spending/page">Add Spending</a></li>--%>
                <%--<li><a href="/view/spending">View Spending</a></li>--%>

            </ul>
        </li>
    </ul>
    <div class="log">
        <a href="/logout"><button class="logout-button" type="submit ">Logout</button> </a>
    </div>
</div>

<form:form action="/edit/user/${user.id}" method="post" commandName="user">
    <div class="edit-form">


        <div class="text">Edit your profile</div>

        <hr class="hr">

        <div><form:input id="firstName" class="input-group" path="firstName" placeholder="First Name"/></div>
        <div class="error"><form:errors path="firstName"/></div>

        <div><form:input id="secondName" class="input-group" path="secondName" placeholder="Second Name"/></div>
        <div class="error"><form:errors path="secondName"/></div>

        <div><form:input id="email" class="input-group" path="email" maxlength="30" placeholder="Gmail"/></div>
        <div class="error"><form:errors path="email"/></div>

        <div><form:input id="phone" class="input-group" path="phone" maxlength="14" placeholder="Phone"/></div>
        <div class="error"><form:errors path="phone"/></div>

        <div><form:input id="login" class="input-group" path="login" placeholder="Login"/></div>
        <div class="error"><form:errors path="login"/></div>

        <div><form:input id="password" class="input-group" path="password" placeholder="Password"/></div>
        <div class="error"><form:errors path="password"/></div>

        <button class="button-confirm">Update</button>

        <%--<div class="text" style="display: none">Edited successfully</div>--%>
    </div>

</form:form>

<div class="footer">
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

<%--<script src="/resources/js/jquery-3.2.1.min.js"></script>--%>
<%--<script src="/resources/js/profilePage.js"></script>--%>

</body>
</html>
