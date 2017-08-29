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
<%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
%>
아이디 : <%=id%><br>
비밀번호 : <%=pw%><br>
------------------------------<br>

아이디 : ${param.id} <br>
비밀번호 : ${param.pw} <br>
아이디 : ${param["id"]} <br>
비밀번호 : ${param["pw"]} <br>

------------------------------<br>
applicationScope : ${applicationScope.application_name}<br>
sessionScope : ${sessionScope.session_name}<br>
pageScope : ${pageScope.pageContext_name}<br>
requestScope : ${requestScope.request_name}<br>
------------------------------<br>
<%--초기화 파라미터는 web.xml에서 설정 가장 위쪽에 설정--%>
context 초기화 파라미터 <br>
${initParam.contextParamNAME}<br>
${initParam.contextParamID}<br>
${initParam.contextParamPW}<br>


</body>
</html>
