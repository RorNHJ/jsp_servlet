<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-16
  Time: 오후 5:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--Student student = new Student(); 와 비슷함--%>
<jsp:useBean id="student" class="been.Student" scope="page" />
<html>
<head>
    <title>Title</title>
</head>
<body>

    <jsp:setProperty name="student" property="name" value="라현지"/>
    <jsp:setProperty name="student" property="age" value="24"/>
    <jsp:setProperty name="student" property="grade" value="4"/>
    <jsp:setProperty name="student" property="studentNum" value="2013136035"/>

    <jsp:getProperty name="student" property="name"/><br>
    <jsp:getProperty name="student" property="age"/><br>
    <jsp:getProperty name="student" property="grade"/><br>
    <jsp:getProperty name="student" property="studentNum"/><br>



</body>
</html>
