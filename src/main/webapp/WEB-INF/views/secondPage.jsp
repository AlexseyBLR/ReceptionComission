<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css"
          integrity="2hfp1SzUoho7/TsGGGDaFdsuuDL0LX2hnUp6VkX3CUQ2K4K+xjboZdsXyp4oUHZj" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/js/bootstrap.min.js"
            integrity="VjEeINv9OSwtWFLAtmc4JCtEJXXBub00gtSnszmspDLCtC0I4z4nqz7rEFbIZLLU"
            crossorigin="anonymous"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Second page</title>
</head>
<body>
<h1>Hello from second page!</h1>
<form:form action="/registration" method="post" modelAttribute="user">

    <tr>
        <td><label for="userName">employeeID </label></td>
        <td><form:input class="form-control" path="userName" id="userName"/>
            <%--<sf:errors path="employeeID" cssClass="error">Incorrect</sf:errors>--%>
        </td>
    </tr>
    <tr>
        <td><label for="password">last name </label></td>
        <td><form:input class="form-control" path="password" id="password"/>
            <%--<sf:errors path="lastName" cssClass="error">Incorrect</sf:errors>--%>
        </td>
    </tr>
    <td>
        <form action="/registration" method="post">
            <input type="submit" class="btn btn-primary" value="Register"/>
        </form>
    </td>
</form:form>
</body>
</html>
