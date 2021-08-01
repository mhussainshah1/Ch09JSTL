<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="../styles/main.css" type="text/css"/>
</head>
<body>
<h1>CD list</h1>
<table>
    <tr>
        <th>Description</th>
        <th>Price</th>
        <th></th>
    </tr>
    <tr>
        <td>86 (the band) - True Life Songs and Pictures</td>
        <td class="right">$14.95</td>
        <td>
            <form action="${pageContext.request.contextPath}/cart" method="post">
                <input type="hidden" name="productCode" value="8601">
                <input type="submit" value="Add To Cart">
            </form>
            <a href="<c:url value='/cart?productCode=8601' />">Add To Cart</a>
            <a href="<c:url value='/cart?productCode=${product.code}' />">Add To Cart</a>
            <a href="<c:url value='/cart'>
                            <c:param name='productCode' value='${product.code}' />
                     </c:url>">
                Add To Cart
            </a>
        </td>
    </tr>
    <tr>
        <td>Paddlefoot - The first CD</td>
        <td class="right">$12.95</td>
        <td>
            <form action="${pageContext.request.contextPath}/cart" method="post">
                <input type="hidden" name="productCode" value="pf01">
                <input type="submit" value="Add To Cart">
            </form>
        </td>
    </tr>
    <tr>
        <td>Paddlefoot - The second CD</td>
        <td class="right">$14.95</td>
        <td>
            <form action="${pageContext.request.contextPath}/cart" method="post">
                <input type="hidden" name="productCode" value="pf02">
                <input type="submit" value="Add To Cart">
            </form>
        </td>
    </tr>
    <tr>
        <td>Joe Rut - Genuine Wood Grained Finish</td>
        <td class="right">$14.95</td>
        <td>
            <form action="${pageContext.request.contextPath}/cart" method="post">
                <input type="hidden" name="productCode" value="jr01">
                <input type="submit" value="Add To Cart">
            </form>
        </td>
    </tr>
</table>
</body>
</html>