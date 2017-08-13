<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <title>registration</title>
    <link rel="stylesheet" href="/resources/css/registration.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></head>
</head>
<body>

<div class="registration-form">
<form:form action="/registration/processing" method="post" modelAttribute="user">

    <h1 class="title">Registration</h1>

    <div class="input">
    <i class="fa fa-user fa-2x icon"></i>
    <form:input cssClass="input-group" path="firstName" placeholder="First Name"/>
    </div>

    <div class="input">
        <i class="fa fa-user-o fa-2x icon"></i>
    <form:input cssClass="input-group" path="secondName" placeholder="Second Name"/>
    </div>

    <div class="input">
        <i class="fa fa-envelope fa-2x icon"></i>
    <form:input cssClass="input-group" path="email" placeholder="Gmail"/>
    </div>

    <div class="input">
        <i class="fa fa-phone fa-2x icon"></i>
    <form:input cssClass="input-group" path="phone" placeholder="Phone"/>
    </div>

    <div class="input">
        <i class="fa fa-sign-in fa-2x icon"></i>
    <form:input cssClass="input-group" path="login" placeholder="Login"/>
    </div>

    <div class="input">
        <i class="fa fa-lock fa-2x icon"></i>
    <form:input cssClass="input-group" path="password" placeholder="Password"/>
    </div>

    <form:button class="button-registration">Registration</form:button>

    <a class="button-login" href="/loginPage">Login</a>

</form:form>
</div>

</body>
</html>
