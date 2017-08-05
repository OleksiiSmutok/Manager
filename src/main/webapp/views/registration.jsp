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
</head>
<body>

<div class="registration-form">
<form:form action="/registration/processing" method="post" modelAttribute="user">

    <form:input cssClass="input-group" path="firstName" placeholder="First Name"/>
    <form:input cssClass="input-group" path="secondName" placeholder="Second Name"/>
    <form:input cssClass="input-group" path="email" placeholder="Email"/>
    <form:input cssClass="input-group" path="phone" placeholder="Phone"/>
    <form:input cssClass="input-group" path="login" placeholder="Login"/>
    <form:input cssClass="input-group" path="password" placeholder="Password"/>

    <form:button>Registration</form:button>

</form:form>
</div>

</body>
</html>
