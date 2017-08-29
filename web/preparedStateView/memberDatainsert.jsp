<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="been.DBConnetor" %><%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-18
  Time: 오후 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    Connection connection = null;
    PreparedStatement preparedStatement = null;
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
        int n;
        String query = "insert into member(id,pw,name,phone) values(?,?,?,?)";
        preparedStatement = connection.prepareStatement(query);

        preparedStatement.setString(1,"aaaaa");
        preparedStatement.setString(2,"dag8fdj");
        preparedStatement.setString(3,"nameA");
        preparedStatement.setString(4,"01012345678");
        n = preparedStatement.executeUpdate();
        System.out.println("n의 값 : " +n);

        preparedStatement.setString(1,"bbbbb");
        preparedStatement.setString(2,"123dg04j7");
        preparedStatement.setString(3,"nameB");
        preparedStatement.setString(4,"01098437156");
        n = preparedStatement.executeUpdate();
        System.out.println("n의 값 : " +n);


        if(n==1)
            out.println("insert success<br>");
        else
            out.println("insert fail<br>");


    }catch (Exception e){
        System.out.println("error : " + e.toString());
    }finally {
        try {
            if(resultSet!=null) resultSet.close();
            if(preparedStatement!=null) preparedStatement.close();
            if(connection!=null) connection.close();

        }catch (Exception e){
            System.out.println("error : " + e.toString());
        }
    }
%>
<a href="memberDataView.jsp">회원정보 보기</a>
</body>
</html>
