<%@ page import="java.util.Enumeration" %> <%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-16
  Time: 오후 2:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    Enumeration enumeration=session.getAttributeNames();
    while(enumeration.hasMoreElements()){
        String sName=enumeration.nextElement().toString();
        String sValue=session.getAttribute(sName).toString();
        if(sValue.equals("admin")) session.removeAttribute(sName);
    }
%>
<h1>session Success!!   </h1>
<a href="sessiontest.jsp">session Test</a>
</body>
</html>
