<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-16
  Time: 오후 2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie cookie = new Cookie("cookieN1","cookieV1");
    cookie.setMaxAge(60*60);//1시간
    response.addCookie(cookie);
%>
<a href="cookieget.jsp">cookie get</a>
</body>
</html>
