<%@ page import="java.time.LocalDate" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>Formatting</title>
</head>
<body>
<fmt:parseDate dateStyle="dd-MM-yyyy"><%=LocalDate.now()%></fmt:parseDate>
</body>
</html>
