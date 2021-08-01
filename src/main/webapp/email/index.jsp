<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP - Hello World</title>
    <link href="../styles/main.css" rel="stylesheet" type="text/css">
</head>

<body>

<h1>Join our email list</h1>

<p>To join our email list, enter your name and email address below.</p>

<c:if test="${message != null}">
    <p><i>${message}</i></p>
</c:if>

<p><c:out value="${message}" default="No message"/></p>
<p><c:out value="${message}">No message</c:out></p>

<form action="${pageContext.request.contextPath}/emailList" method="post">
    <input name="action" type="hidden" value="add">

    <label class="pad_top" for="email">Email:</label>
    <input id="email" name="email" type="email" value="${user.email}"><br>

    <label class="pad_top" for="firstname">First Name:</label>
    <input id="firstname" name="firstName" type="text" value="${user.firstName}"><br>

    <label class="pad_top" for="lastname">Last Name:</label>
    <input id="lastname" name="lastName" type="text" value="${user.lastName}"><br>

    <label>&nbsp;</label>
    <input class="margin_left" type="submit" value="Join Now">
</form>
</body>
</html>