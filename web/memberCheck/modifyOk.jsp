<%@ page import="dao.MemberDAO" %>
<%@ page import="dto.MemberDTO" %><%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-22
  Time: 오전 2:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    String phone, email, sex;
    int ri;
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("EUC-KR");

    phone = request.getParameter("phone");
    email = request.getParameter("email");
    sex = request.getParameter("sex");
    MemberDTO dto = new MemberDTO();
    dto.setId((String)session.getAttribute("id"));
    dto.setEmail(email);
    dto.setPhone(phone);
    dto.setSex(sex);
    MemberDAO dao = MemberDAO.getInstance();
    ri = dao.updateMember(dto);
%>

<%
    if(ri==1){
        out.println("회원정보 수정 완료 <br>");
        response.sendRedirect("main.jsp");
    }else{
        %>
    <script>
        alert("회원 정보 수정 실패!!")
    </script>
<%
        response.sendRedirect("modify.jsp");
    }
%>

</body>
</html>
