<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(session.getAttribute("VaildMem")==null){%>
    <jsp:forward page="login.jsp "></jsp:forward>
<%    }%>
<%!
    String name;
    String id ;
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    name = (String)session.getAttribute("name");
    id = (String)session.getAttribute("id");
%>
<h1><%=name%> 님 안녕하세요 </h1>

<form action="logout.jsp" method="post">
    <input type="submit" value="로그아웃">&nbsp;&nbsp;&nbsp;<input type="button" value="정보수정" onclick="javascript:window.location='modify.jsp'">
</form>
</body>
</html>
