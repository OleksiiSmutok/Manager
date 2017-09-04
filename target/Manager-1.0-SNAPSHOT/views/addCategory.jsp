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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
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


<div id="carousel" class="carousel slide" data-ride="carousel">

    <ol class="carousel-indicators">
        <li class="active" data-target="#carousel" data-slide-to="0"></li>
        <li data-target="#carousel" data-slide-to="1"></li>
        <li data-target="#carousel" data-slide-to="2"></li>
    </ol>

    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="/resources/img/3.jpg" alt="">
            <div class="carousel-caption">
                <h3>First Slide</h3>
                <p>Title</p>
            </div>
        </div>

        <div class="item">
            <img src="/resources/img/6.jpg" alt="">
            <div class="carousel-caption">
                <h3>Second Slide</h3>
                <p>Title</p>
            </div>
        </div>

        <div class="item">
            <img src="/resources/img/8.jpg" alt="">
            <div class="carousel-caption">
                <h3>Thrid Slide</h3>
                <p>Title</p>
            </div>
        </div>
    </div>

    <a href="#carousel" class="left carousel-control" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>

    <a href="#carousel" class="right carousel-control" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>

</div>


<div class="add-category-form">
    <div class="name"><input class="categoryName" type="text" placeholder="Name fo Category"></div>

<div class="all-category">

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-film fa-3x icon1"></i>
            <div class="c1" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-graduation-cap fa-3x icon2"></i>
            <div class="c2" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-heartbeat fa-3x icon3"></i>
            <div class="c3" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-home fa-3x icon4"></i>
            <div class="c4" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-cutlery fa-3x icon5"></i>
            <div class="c5" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-gift fa-3x icon6"></i>
            <div class="c6" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-gamepad fa-3x icon7"></i>
            <div class="c7" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-internet-explorer fa-3x icon8"></i>
            <div class="c8" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-shopping-bag fa-3x icon9"></i>
            <div class="c9" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-bus fa-3x icon10"></i>
            <div class="c10" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>
        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-wifi fa-3x icon11"></i>
            <div class="c11" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-globe fa-3x icon12"></i>
            <div class="c12" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-fighter-jet fa-3x icon13"></i>
            <div class="c13" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-university fa-3x icon14"></i>
            <div class="c14" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-coffee fa-3x icon15"></i>
            <div class="c15" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-shopping-cart fa-3x icon16"></i>
            <div class="c16" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-futbol-o fa-3x icon17"></i>
            <div class="c17" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-glass fa-3x icon18"></i>
            <div class="c18" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-taxi fa-3x icon19"></i>
            <div class="c19" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-bicycle fa-3x icon20"></i>
            <div class="c20" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-line-chart fa-3x icon21"></i>
            <div class="c21" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-paw fa-3x icon22"></i>
            <div class="c22" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-percent fa-3x icon23"></i>
            <div class="c23" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>

        <div class="icon-choose "><i onclick="saveIcon(this)" class="fa fa-cogs fa-3x icon24"></i>
            <div class="c24" style="display: none"><i class="fa fa-check fa-2x" aria-hidden="true"></i></div>
        </div>
</div>

    <button type="submit" class="button-confirm">Confirm</button>

<div class="text" style="display:none;">You are added the category</div>
</div>


<hr class="hr">

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

<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script src="/resources/js/addCategory.js"></script>
<script src="/resources/js/bootstrap.js"></script>

</body>
</html>
