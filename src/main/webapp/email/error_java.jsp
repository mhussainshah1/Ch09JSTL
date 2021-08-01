<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Error</title>
    <link rel="stylesheet" href="../styles/main.css" type="text/css"/>
</head>
<body>
<h1>Error</h1>

<p>session variable: ${message}</p>
<c:remove var="message" scope="session" />

<p>variable removed: ${message}</p>

<label>First Name:</label><span><c:out value="${user.firstName}"/></span>
</body>
</html>
