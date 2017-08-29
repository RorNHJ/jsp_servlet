<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-18
  Time: 오전 12:47
  To change this template use File | Settings | File Templates.
--%>
<%!
    String name, id;
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    name = (String)session.getAttribute("name");
    id =  (String)session.getAttribute("id");
%>
<%=name%>  님 안녕하세요!!  <br>
<a href="modify.jsp">회원정보 수정</a>
</body>
</html>
