
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>hello world</title>
  </head>
  <body>
  Hello world

  <%--action 태그에는 호출할 서블릿의 url패턴이랑 같아야한다. 또는 jsp,html 파일도 가능하다--%>
  <form action="joinus" method="post">
    이름: <input type="text" name ="name" size="10"><br>
    아이디 : <input type="text" name ="id" size="10"><br>
    비밀번호 :  <input type="password" name ="pw" size="10"><br>
    취미 :  <input type="checkbox" name ="hobby" value="read"> 독서<br>
    <input type="checkbox" name ="hobby" value="run">조깅<br>
    <input type="checkbox" name ="hobby" value="swim">수영<br>
    <input type="checkbox" name ="hobby" value="sleep">취침<br>
    성별 :  <input type="radio" name ="sex" value="man">남  <input type="radio" name ="sex" value="woman">여<br>
    <select name="protocol">
      <option value="http">http</option>
      <option value="ftp" selected="selected">ftp</option>
      <option value="smtp">smtp</option>
      <option value="pop">pop</option>
    </select><br>

    <input type="submit" value="제출">
    <input type="reset" value="초기화">
  </form>

  <%--이거슨 jsp로 값을 보낼때...--%>
  <form action="parameter.jsp" method="post">
    이름: <input type="text" name ="name" size="10"><br>
    아이디 : <input type="text" name ="id" size="10"><br>
    비밀번호 :  <input type="password" name ="pw" size="10"><br>
    취미 :  <input type="checkbox" name ="hobby" value="read"> 독서<br>
    <input type="checkbox" name ="hobby" value="run">조깅<br>
    <input type="checkbox" name ="hobby" value="swim">수영<br>
    <input type="checkbox" name ="hobby" value="sleep">취침<br>
    성별 :  <input type="radio" name ="sex" value="man">남  <input type="radio" name ="sex" value="woman">여<br>
    <select name="protocol">
      <option value="http">http</option>
      <option value="ftp" selected="selected">ftp</option>
      <option value="smtp">smtp</option>
      <option value="pop">pop</option>
    </select><br>

    <input type="submit" value="제출">
    <input type="reset" value="초기화">
  </form>

  <br>
  <h1> 검증페이지 테스트 ...</h1>
  <form action="request_send.jsp">
    당신의 나이는? <input type="text" name="age" size="5">
    <input type="submit" value="전송">
  </form>
<br>
  <%--포워딩.. 걍 페이지 이동하는거임..걍 바로 페이지를 보여줌 순식간--%>
  <%--&lt;%&ndash;jsp파일로 포워딩 가능&ndash;%&gt;--%>
  <%--&lt;%&ndash;<jsp:forward page="include01.html"/>&ndash;%&gt;--%>
  <%--&lt;%&ndash;<jsp:include page="scriptlet.jsp" flush="true"/>&ndash;%&gt;--%>
  <%--<jsp:forward page="parameter.jsp">--%>
    <%--<jsp:param name="id" value="abcdef"/>--%>
    <%--<jsp:param name="pw" value="1234"/>--%>
  <%--</jsp:forward>--%>
  <%--원상복귀..--%>
  </body>
</html>
