<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=EUC-KR" language="java" %>
<html>
<head>
    <title>parameter �׽�Ʈ������</title>
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
�̸� : <%=name%><br>
���̵� : : <%=id%><br>
��й�ȣ : <%=pw%><br>
��� : <%=Arrays.toString(hobbys)%><br>
���� : <%=sex%><br>
�������� : <%=protocol%><br>
</body>
</html>
