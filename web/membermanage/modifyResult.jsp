<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-18
  Time: 오전 1:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
String name, id;
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    name = (String)session.getAttribute("name");
    id =  (String)session.getAttribute("id");
%>
<%=name%>  님 회원정보 수정을 완료했습니다 <br>
<a href="logout.jsp">로그아웃</a>   <a href="modify.jsp">회원정보 수정</a>
</body>
</html>
