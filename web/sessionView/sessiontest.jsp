<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-16
  Time: 오후 3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int i=0;
    Enumeration enumeration=session.getAttributeNames();
    while(enumeration.hasMoreElements()){
        i++;
        String sName=enumeration.nextElement().toString();
        String sValue=session.getAttribute(sName).toString();

        out.println("sName : " + sName+ " <br>");
        out.println("sValue : " + sValue+ " <br>");

    }
    if(i==0)
        out.println("<h1>No session </h1><br>");

%>
</body>
</html>
