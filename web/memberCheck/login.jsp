<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-19
  Time: 오후 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(session.getAttribute("VaildMem")!=null){%>
        <jsp:forward page="main.jsp "></jsp:forward>
<%    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="loginOk.jsp" method="post">
    아이디 : <input type="text" name="id" value="<%if(session.getAttribute("id") != null) out.println(session.getAttribute("id"));%>"><br>
    비밀번호 : <input type="password" name="pw"><br>
    <input type="submit" value="로그인"> <input type="button" value="회원가입" onclick="javascript:window.location ='join.jsp'">
</form>
</body>
</html>
