<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    ${3 > 4}

    \${3 > 4}

    <h3>算术运算符</h3>
    ${3 + 4}<br>
    ${3 / 4}<br>
    ${3 div 4}<br>
    ${3 mod 4}<br>

    <h3>比较运算符</h3>
    ${3 == 4}<br>

    <h3>逻辑运算符</h3>
    ${3 > 4 && 3 < 4}<br>

<%
    String str = "";
%>

    <c:set var="string" value=""></c:set>
    <h3>空运算符</h3>
    ${empty string}

</body>
</html>
