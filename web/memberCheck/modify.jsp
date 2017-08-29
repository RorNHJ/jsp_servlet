<%@ page import="dao.MemberDAO" %>
<%@ page import="dto.MemberDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    String id,sex;
%>
<html>
<head>
    <title>Title</title>
    <script language="JavaScript" src ="member.js"></script>
</head>
<body>
<%    request.setCharacterEncoding("EUC-KR");

    id=(String)session.getAttribute("id");

    MemberDAO dao = MemberDAO.getInstance();
    MemberDTO dto = dao.getMember(id);

%>
<form action="modifyOk.jsp" method="post" name="reg_frm">
    이름: <%=dto.getName()%><br>
    아이디 : <%=dto.getId()%><br>
    비밀번호 :  <input type="password" name ="pw" size="10"><br>
    비밀번호 확인:  <input type="password" name ="pw_check" size="10"><br>
    이메일 :  <input type="text" name ="email" size="10" value=<%=dto.getEmail()%>><br>
    전화번호: <input type="text" name ="phone" size="10" value=<%=dto.getPhone()%>><br>

    <%
        String sex = dto.getSex();
        if(sex.equals("man")){
    %>
    성별 :  <input type="radio" name ="sex" value="man" checked="checked">남  <input type="radio" name ="sex" value="woman">여<br>
    <%
        }else{
    %>
    성별 :  <input type="radio" name ="sex" value="man">남  <input type="radio" name ="sex" value="woman" checked="checked">여<br>
    <%}%>

    <input type="button" value="수정" onclick="updateInfoConfirm()">&nbsp;&nbsp;&nbsp;
    <input type="reset" value="취소" onclick="javascript:window.location ='main.jsp'">
</form>

</body>
</html>
