<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>el获取域中的数据</title>
</head>
<body>


    <%
        //在域中存储数据
        request.setAttribute("name", "zhangsan");
        session.setAttribute("age", "23");


    %>

<h3>el获取值</h3>
${requestScope.name}
${sessionScope.age}


</body>
</html>
