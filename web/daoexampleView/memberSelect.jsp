<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.MemberDAO" %>
<%@ page import="dto.MemberDTO" %><%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-18
  Time: 오후 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    MemberDAO memberDAO = new MemberDAO();
    ArrayList<MemberDTO> dtos = memberDAO.memberSelect();

    for(int i = 0; i<dtos.size(); i++){
        MemberDTO dto = dtos.get(i);
        String name = dto.getName();
        String id = dto.getId();
        String pw = dto.getPw();
        String phone = dto.getPhone();
        String email = dto.getEmail();
        String sex = dto.getSex();
        out.println("이름 : " + name +"<br>");
        out.println("아이디 : " + id +"<br>");
        out.println("비밀번호 : " + pw +"<br>");
        out.println("연락처 : " + phone +"<br>");
        out.println("이메일 : " + email +"<br>");
        out.println("성별 : " + sex +"<br>--------------------<br>");
    }
%>

</body>
</html>
