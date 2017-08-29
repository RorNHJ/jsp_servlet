<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=EUC-KR" language="java" %>
<html>
<head>
    <title>parameter 테스트페이지</title>
</head>
<body>
    <%!
        String name,id,pw,sex,protocol;
        String[] hobbys;
    %>
    <%
        request.setCharacterEncoding("EUC-KR");

        name = request.getParameter("name");
        id = request.getParameter("id");
        pw = request.getParameter("pw");
        sex = request.getParameter("sex");
        protocol = request.getParameter("protocol");
        hobbys = request.getParameterValues("hobby");


    %>
이름 : <%=name%><br>
아이디 : : <%=id%><br>
비밀번호 : <%=pw%><br>
취미 : <%=Arrays.toString(hobbys)%><br>
성별 : <%=sex%><br>
프로토콜 : <%=protocol%><br>
</body>
</html>
