<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-16
  Time: 오후 2:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    for(int i=0; i<cookies.length;i++){
        String str = cookies[i].getName();
        if(str.equals("cookieN1")){
            out.println("cookes[" +i+"] name: " + cookies[i].getName()+"<br>");
            out.println("cookes[" +i+"] value: " + cookies[i].getValue()+"<br>");
            cookies[i].setMaxAge(0);
            response.addCookie(cookies[i]);

        }
    }
%>
<a href="cookieget.jsp">cookie 확인</a>

</body>
</html>
