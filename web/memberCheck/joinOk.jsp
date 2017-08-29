
<%@ page import="dao.MemberDAO" %>
<%@ page import="java.sql.Timestamp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="dto" class="dto.MemberDTO" scope="session" />
<jsp:setProperty name="dto" property="*"/>

<%
    request.setCharacterEncoding("EUC-KR");
    dto.setDate(new Timestamp(System.currentTimeMillis()));
    MemberDAO dao = MemberDAO.getInstance();
    if(dao.confirmId(dto.getId()) == MemberDAO.MEMBER_EXISTENT){
%>
    <script language="JavaScript">
        alert("아이디가 존재합니다.");
        history.back();
    </script>
<%
    }else{
        int ri = dao.insertMember(dto);
        if(ri == MemberDAO.MEMBER_JOIN_SUCCESS){
            session.setAttribute("id",dto.getId());

%>
        <script language="JavaScript">
          alert("회원가입을 축하합니다.");
          document.location.href="login.jsp";
        </script>
<%
        }else{
%>
        <script language="JavaScript">
            alert("회원가입에 실패했습니다.");
            document.location.href="login.jsp";
        </script>
<%
    }}
%>

<html>
<head>
    <title>Title</title>
 </head>
<body>

</body>
</html>
