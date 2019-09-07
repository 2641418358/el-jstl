<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <%--
        c:if标签
            1.属性：
                *test必须属性，接受boolean表达式
                    *如果表达式为true，则显示if标签体的内容，如果为false，则不显示
                    *一般情况下，test属性会结合el表达式一起使用
            2.注意：C；if标签没有else情况，想要else情况，则苦于定义一个c：if标签
    --%>

    <c:if test="true">
        <h1>我是真...</h1>
    </c:if>

    <%
            //判断request域中的一个list集合是否为空，如果不为null则不会显示遍历集合
        List list = new ArrayList();
        list.add("aaa");
        request.setAttribute("list", list);

        request.setAttribute("number", 3);
    %>

    <c:if test="${not empty list}">
        遍历集合成功
    </c:if>

    <c:if test="${number % 2 == 0}">
        ${number}为偶数
    </c:if>

    <c:if test="${number % 2 != 0}">
        ${number}为奇数
    </c:if>

</body>
</html>
