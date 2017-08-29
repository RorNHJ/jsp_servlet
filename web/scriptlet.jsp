<%--
 이거슨 스크립트릿과 선언,표현식 공부..
 request, response, out은 내부객체라 걍 선언없이 사용...
--%>
<%--자바처럼 임포트도 시킬수 있다...--%>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<%--전역변수,전역 메소드 선언문 <%! %>--%>
<%!
    int val = 10;
    String str = "hyunji";
%>

<%!
    public int sum(int a, int b){
        return a+b;
    }
%>
<%
    out.println("<h2> val = " + val + "</h2>");
    out.println("<h3> str = " + str+ "</h3>");
    out.println("<h4> sum = " + sum(26,31)+ "<h4><br>");

%>
<%--전역변수 값만 출력..--%>
<%= val%><br>
<%= str%><br>
<%= sum(1,2)%><br>

<%
    int i=0;
    while (true){
        i++;
        out.println("2 x "+i+" = "+ (2*i)+ "<br>");

%>
------------<br>
<%
    if(i==9)
        break;
    }
%>
<%--다른 페이지를 중간에 삽입시 사용..--%>
<%@ include file="include01.html"%>
<br>
<%
    int[] iArr = {10,20,30};
    out.println( Arrays.toString(iArr)  );
%>
<br><br>
<%
    out.println("컨텍스트: " + request.getContextPath() + "<br>");
    out.println("서버: " + request.getServerName() + "<br>");
    out.println("포트번호: " + request.getServerPort() + "<br>");
    out.println("요청방식: " + request.getMethod() + "<br>");
    out.println("프로토콜: " + request.getProtocol() + "<br>");
    out.println("URL: " + request.getRequestURL() + "<br>");
    out.println("URI: " + request.getRequestURI() + "<br>");


%>
</body>
</html>
