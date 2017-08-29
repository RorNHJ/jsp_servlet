<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-16
  Time: 오후 2:40
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
    if(cookies!=null) {
        for (int i = 0; i < cookies.length; i++) {
            String id = cookies[i].getValue();
            if (id.equals("admin")) {
                cookies[i].setMaxAge(0);
                response.addCookie(cookies[i]);

            }
        }
    }
    response.sendRedirect("cookieget.jsp");
%>
</body>
</html>
