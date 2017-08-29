<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-16
  Time: 오후 2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    session.setAttribute("mySessionName","mySessionData");
    session.setAttribute("myNum",12345);

%>
<a href="sessionget.jsp">session get</a>
</body>
</html>
