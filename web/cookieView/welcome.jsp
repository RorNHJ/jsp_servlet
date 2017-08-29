<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-16
  Time: 오후 2:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    Cookie[] cookies=request.getCookies();
    for(int i=0; i<cookies.length;i++){
        String id = cookies[i].getValue();
        if(id.equals("admin")){
            out.println(id+"님 안녕하세요 <br>");

        }
    }
%>
<h1>Login Success!!   </h1>
<a href="logout.jsp">로그아웃</a>
</body>
</html>
