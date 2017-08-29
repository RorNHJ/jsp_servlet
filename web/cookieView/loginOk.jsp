<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-16
  Time: 오후 2:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    String id,pw;
%>
<%
    id=request.getParameter("id");
    pw=request.getParameter("pw");

    if(id.equals("admin") && pw.equals("1234")){
        Cookie cookie = new Cookie("id",id);
        cookie.setMaxAge(60);
        response.addCookie(cookie);
        response.sendRedirect("welcome.jsp");

    }else{
        response.sendRedirect("login.html");

    }
%>
</body>
</html>
