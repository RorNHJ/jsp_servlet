<%--
  Created by IntelliJ IDEA.
  User: hyun ji Ra
  Date: 2017-08-20
  Time: 오후 2:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script language="JavaScript" src ="member.js"></script>
</head>
<body>
 <form action = "joinOk.jsp" method="post" name="reg_frm">
     아이디 : <input type="text" name = "id" size="20"> <br>
     비밀번호 :  <input type="password" name ="pw" size="20"><br>
     비밀번호 확인 :  <input type="password" name ="pw_check" size="20"><br>
     이름 : <input type="text" name = "name" size="20"> <br>
     전화번호 :  <input type="text" name ="phone" size="20"><br>
     메일 :  <input type="text" name ="email" size="30"><br>
     성별 :  <input type="radio" name ="sex" value="man">남  <input type="radio" name ="sex" value="woman">여<br>
     <input type="button" value="회원가입" onclick="infoConfirm()">&nbsp;&nbsp;&nbsp;<input type="reset" value="취소" onclick="javascript:window.location ='login.jsp'">

 </form>

</body>
</html>
