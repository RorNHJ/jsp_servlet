<%@ page import="dao.MemberDAO" %>
<%@ page import="dto.MemberDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("EUC-KR");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    MemberDAO dao = MemberDAO.getInstance();
    int checkNum = dao.userCheck(id,pw);
    if(checkNum ==-1){
%>
<script>
    alert("잘못된 정보입니다.");
    history.go(-1);
</script>
<%}else if(checkNum ==1){
    MemberDTO dto = dao.getMember(id);
    if(dto == null){
%>

    <script>
    alert("존재하지 않는 회원 입니다.");
    history.go(-1);
</script>
<%}else{
    String name = dto.getName();
    System.out.println("adnag: "+ name);
    session.setAttribute("id",id);
    session.setAttribute("name",name);
    session.setAttribute("VaildMem","yes");
    response.sendRedirect("main.jsp");

}}%>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
