<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-16
  Time: 오후 5:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<% response.setStatus(200); %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Error !!</h1><br>
    error :  <%=  exception.getMessage()%>
</body>
</html>
