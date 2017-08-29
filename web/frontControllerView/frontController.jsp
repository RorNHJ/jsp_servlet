<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-22
  Time: 오후 7:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="insert.do">insert</a>
<br>
<a href="http://localhost:8080<%=request.getSession().getServletContext().getContextPath()%>/update.do">update</a>
http://localhost:8080<%=request.getSession().getServletContext().getContextPath()%>/update.do"
<br>
<a href="http://localhost:8080/select.do">select</a>
<br>
<a href="<%=request.getSession().getServletContext().getContextPath()%>/delete.do">delete</a>

</body>
</html>
