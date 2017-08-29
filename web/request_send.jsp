<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-16
  Time: 오후 12:56
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
//    검증하기
    String str = request.getParameter("age");
    age=Integer.parseInt(str);
    if(age>=20)
        response.sendRedirect("pass.jsp?age=" +age);
    else
        response.sendRedirect("nopass.jsp?age=" +age);

%>
</body>
</html>
