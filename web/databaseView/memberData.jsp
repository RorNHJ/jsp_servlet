<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="javax.xml.transform.Result" %>
<%@ page import="java.sql.ResultSet" %>
<%!
    Connection connection = null;
    Statement statement = null;
    ResultSet  resultSet = null;
    String database = "helloworld";
    String table = "member";
    String driver = "com.mysql.jdbc.Driver";
    String url= "jdbc:mysql://localhost:3306/"+database;
    String dbID = "root";
    String dbPW = "1234";

    String query = "select * from "+table;
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    try{
        Class.forName(driver);
        connection = DriverManager.getConnection(url,dbID,dbPW);
        statement = connection.createStatement();
        resultSet = statement.executeQuery(query);

        while(resultSet.next()){
//            테이블의 속성의 타입에 맡게 getInt 또는 getString
            String id = resultSet.getString("id");
            String pw = resultSet.getString("pw");
            String name = resultSet.getString("name");
            String phone = resultSet.getString("phone");
            out.println("ID : " +id+"<br>");
            out.println("PW : " +pw+"<br>");
            out.println("name : " +name+"<br>");
            out.println("phone : " +phone+"<br>");
            out.println("-----------------------<br>");

        }
    }catch (Exception e){
        out.println("error : " + e.toString());
    }finally {
        try{
            if(resultSet != null) resultSet.close();
            if(statement != null) statement.close();
            if(connection != null) connection.close();
        }catch (Exception e){
            out.println("error : " + e.toString());
        }
    }
%>
</body>
</html>
