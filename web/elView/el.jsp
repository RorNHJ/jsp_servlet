<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-22
  Time: 오후 5:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="member" class ="dto.MemberDTO" scope="page"/>
<jsp:setProperty name="member" property="name" value="라현지"/>
<jsp:setProperty name="member" property="id" value="ijd0114"/>
<jsp:setProperty name="member" property="pw" value="1234"/>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--${} 와 <%= %> 이거는 같은표현법이다--%>
    ${10}<br>
    ${99.99}<br>
    ${"ABC"}<br>
    <%--  {ABC}<br> 이건 표현이 안됨...--%>
    ${true}<br>

    ${1+2}<br>
    ${1-2}<br>
    ${1*2}<br>
    ${1/2}<br>
    ${1>2}<br>
    ${(1<2) ?1:2}<br>
    ${(1>2) || (1<2)}<br>

<%--  <jsp:getProperty name="member" property="name"/> 와 ${meber.name} 은 같은 표현법...--%>
   이름:  <jsp:getProperty name="member" property="name"/><br>
   아이디: <jsp:getProperty name="member" property="id"/><br>
   비밀번호: <jsp:getProperty name="member" property="pw"/><br>------------<br>

    이름: ${member.name}<br>
    아이디: ${member.id}<br>
    비밀번호: ${member.pw}<br>

<%-------------------------------------------------------%>



</body>
</html>
