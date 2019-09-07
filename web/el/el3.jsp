<%@ page import="cn.itcast.domain.User" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>el获取数据</title>
</head>
<body>
<%
    User user = new User();
    user.setName("张三");
    user.setAge(18);
    user.setBirthday(new Date());

    request.setAttribute("u", user);

    List list = new ArrayList();
    list.add("aaa");
    list.add("bbb");

    request.setAttribute("list", list);

    Map map = new HashMap();
    map.put("name", "李四");
    map.put("gender", "男");
    map.put("user", user);

    request.setAttribute("map", map);

%>

<h3>el获取对象中的值</h3>
${requestScope.u}

<%--
    通过对象的属性来获取
        *setter或getter方法，去掉set或get，在将剩余部分，首字母变小写
        *setName --> Name -->name
--%>

${requestScope.u.name}
${u.age}
${u.birthday}
${u.birStr}

<h3>el获取List中的值</h3>
${list}
${list[0]}

<h3>el获取Map中的值</h3>
${map}
${map.gender}
${map["gender"]}
${map.user.name}

</body>
</html>
