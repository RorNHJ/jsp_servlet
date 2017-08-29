<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-18
  Time: 오전 1:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    session.invalidate();
    response.sendRedirect("login.html");
%>
</body>
</html>
