<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-22
  Time: 오후 5:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="objelOk.jsp" method="get">
    아이디 : <input type="text" name="id"><br>
    비밀번호 : <input type="password" name="pw"><br>
    <input type="submit" value="login">
</form>

<%
    application.setAttribute("application_name","application_value");
    session.setAttribute("session_name","session_value");

    //pageContext와 request는 아마 출력이 안될것이다 왜냐하면 objel.jsp에서만 유효하고
    //objelOk.jsp에서는 유효하지 않기 때문에...
    pageContext.setAttribute("pageContext_name","pageContext_value");
    request.setAttribute("request_name","request_value");

%>
</body>
</html>
