<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thanks</title>
    <link href="styles/main.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1>Thanks for joining our login.murach.email list</h1>

<p>Here is the information that you entered:</p>

<label>Email:</label><span><c:out value="${user.email}"/></span><br>
<label>First Name:</label><span><c:out value="${user.firstName}"/></span><br>
<label>Last Name:</label><span><c:out value="${user.lastName}"/></span><br>

<form action="" method="get">
    <input type="hidden" name="action" value="join">
    <input type="submit" value="Return">
</form>

<p>An example that escapes output that displays cookie names and values</p>
<table>
    <tr>
        <th>Name</th>
        <th>Value</th>
    </tr>
    <c:forEach var="cook" items="${cookie}">
        <tr>
            <td><c:out value="${cook.value.name}"/></td>
            <td><c:out value="${cook.value.value}"/></td>
        </tr>
    </c:forEach>
</table>

<%--forTokens tag--%>
<p>Email parts</p>
<ul>
    <c:forTokens var="part" items="${emailAddress}" delims="@.">
        <li>${part}</li>
    </c:forTokens>
</ul>

<%--for loop--%>
<p>Numbers</p>
<ul>
    <c:forEach items="${numbers}" var="number" begin="0" end="9" step="1" varStatus="status">
        <li>${number} | First: ${status.first} | Last: ${status.last} | Index: ${status.index} | Count: ${status.count} </li>
    </c:forEach>
</ul>

<%--other tags--%>
<c:set var="message" scope="session" value="Test Message" />
<c:set target="${user}" property="firstName" value="John" />
<label>First Name:</label><span><c:out value="${user.firstName}"/></span>

<c:catch var="e">
    <%
        int i = 1/0;
    %>
    <p>Result: <c:out value="${i}" /></p>
</c:catch>
<c:if test="${e != null}">
    <p>An exception occurred. Message: ${e.message}</p>
    <c:redirect url="/email/error_java.jsp" />
</c:if>

</body>

</html>
