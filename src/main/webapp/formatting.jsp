<%@ page import="java.time.LocalDate" %><%--
  Created by IntelliJ IDEA.
  User: m_hus
  Date: 7/25/2021
  Time: 7:10 PM
  To change this template use File | Settings | File Templates.
--%>
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
