<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
          crossorigin="anonymous">
    <title>Registration</title>
    <style>
        .container {
            margin-top: 20px;
        }
        .header-right {
            float: right;
        }

        .header {
            padding: 20px;
            background: lightslategrey;
            overflow: hidden;

        }

        .header a {
            padding: 10px;
            color: black;
            text-decoration: none;
            font-family: Arial;
        }

        body {
            margin: 0;
        }

        .header a:hover {
            background: #ddd;
            color: black;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="header-right">
        <sec:authorize access="isAuthenticated()">
            <a href="/logout">Logout</a>
        </sec:authorize>

        <sec:authorize access="hasRole('ROLE_ADMIN')">
            <a href="/admin">Admin</a>
        </sec:authorize>

        <a href="/login">Login</a>
        <a href="/registration">Registration</a>
    </div>

</div>
<div class="container">
    <div class="row">
        <div class="col-sm-8 col-sm-offset-2">
            <form:form class="form-horizontal" method="POST"
                       action="/createHero" model="MyUser" >
                <div class="form-group">
                    <label for="login" class="control-label col-sm-2">Full name:</label>
                    <div class="col-sm-10">
                        <form:input type="text" path="login" id="login" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">

                    <label for="password" class="control-label col-sm-2">Password:</label>

                    <div class="col-sm-10">

                        <form:password path="password" id="password" class="form-control"/>

                    </div>

                </div>

                <div class="form-group">

                        <%--<div class="col-sm-10 col-sm-offset-2"><form:errors path="checkPassword"/></div>--%>

                    <label for="passwordRepeat" class="control-label col-sm-2">Password repeat:</label>

                    <div class="col-sm-10">

                        <form:password path="passwordRepeat" id="passwordRepeat" class="form-control"/>

                    </div>

                </div>

                <div class="form-group">

                    <div class="col-sm-10 col-sm-offset-2">

                        <button class="btn btn-success" type="submit">Register</button>

                    </div>

                </div>

            </form:form>

        </div>

    </div>

</div>

</body>

</html>