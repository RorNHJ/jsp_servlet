<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-22
  Time: 오후 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
dispacherJsp.jsp [RequestDispatcher] 사용
<br>
id: <%= request.getAttribute("id") %><br>
pw: <%=request.getAttribute("pw") %><br>
jstlVar : ${jstlVar}<br>
paramVar : ${param.paramVar}<br>
----------------------------------<br>
<%--[HttpServletResponse] 사용<br>--%>
<%--<%--%>
    <%--request.setAttribute("id","hyunji");--%>
    <%--request.setAttribute("pw","11111");--%>
    <%--response.sendRedirect("../requestobj");--%>

<%--%>--%>
</body>
</html>
