<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-16
  Time: 오후 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    int age;
%>
<%
    String str =request.getParameter("age");
    age = Integer.parseInt(str);
%>
당신의 나이는 <%=age%> 입니다.<br>
성인 입니다. 주류구매가 가능합니다.
<a href="index2.jsp">처음으로 이동</a>
</body>
</html>
