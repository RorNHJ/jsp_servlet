<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-18
  Time: 오전 12:56
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="been.DBConnetor" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    String id,name,pw,phone,email,sex;
    DBConnetor dbConnetor = new DBConnetor();
    Statement statement= null;
    ResultSet resultSet = null;
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    id=(String)session.getAttribute("id");
    String query = "select * from member where id = \""+ id+"\"";
    Connection con = dbConnetor.makeConnection();
    statement = con.createStatement();
    resultSet = statement.executeQuery(query);
    while (resultSet.next()) {
        name = resultSet.getString("name");
        pw = resultSet.getString("pw");
        phone = resultSet.getString("phone");
        email = resultSet.getString("email");
        sex = resultSet.getString("sex");
    }
%>
<form action="modifyok" method="post">
    이름: <input type="text" name ="name" size="10" value=<%=name%>><br>
    아이디 : <%=id%><br>
    이메일 :  <input type="text" name ="email" size="10" value=<%=email%>><br>
    전화번호: <input type="text" name ="phone" size="10" value=<%=phone%>><br>

    <%
        if(sex.equals("man")){
    %>
    성별 :  <input type="radio" name ="sex" value="man" checked="checked">남  <input type="radio" name ="sex" value="woman">여<br>
    <%
        }else{
    %>
    성별 :  <input type="radio" name ="sex" value="man">남  <input type="radio" name ="sex" value="woman" checked="checked">여<br>
    <%}%>
    비밀번호 확인:  <input type="password" name ="pw" size="10"><br>

    <input type="submit" value="제출">
    <input type="reset" value="초기화">
</form>

</body>
</html>
