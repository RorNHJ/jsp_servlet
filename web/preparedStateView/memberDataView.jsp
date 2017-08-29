<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="been.DBConnetor" %>
<%@ page import="java.sql.Statement" %><%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-18
  Time: 오후 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    DBConnetor dbConnetor = new DBConnetor();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <%
     try{
         connection=dbConnetor.makeConnection();
         statement = connection.createStatement();
         resultSet = statement.executeQuery("select * from member");
         while (resultSet.next()){
             String name = resultSet.getString("name");
             String id = resultSet.getString("id");
             String pw = resultSet.getString("pw");
             String phone = resultSet.getString("phone");
             String email = resultSet.getString("email");
             String sex = resultSet.getString("sex");

             out.println("이름 : " + name +"<br>");
             out.println("아이디 : " + id +"<br>");
             out.println("비밀번호 : " + pw +"<br>");
             out.println("연락처 : " + phone +"<br>");
             out.println("이메일 : " + email +"<br>");
             out.println("성별 : " + sex +"<br>--------------------<br>");

         }

     }catch (Exception e){
         System.out.println("error : " + e.toString());
     }finally {
         try {
             if(resultSet!=null) resultSet.close();
             if(statement!=null) statement.close();
             if(connection!=null) connection.close();

         }catch (Exception e){
             System.out.println("error : " + e.toString());
         }
     }
 %>
</body>
</html>
