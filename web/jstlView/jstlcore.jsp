
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var = "varName" value = "varValue"/>
varName : <c:out value = "${varName}"/>
<br>
<c:remove var = "varName"/>
varName : <c:out value = "${varName}"/>
<br>
<%--변수 error 안에 에러문이 들어간다--%>
<c:catch var="error">
    <%=2/0%>
</c:catch>
<br>
<c:out value="${error}"/>
<br>
<c:if test="${1+2 == 3}">
    1+2 = 3
</c:if>

<c:if test="${1+2 != 3}">
    1+2 != 3
</c:if>

<br>
<c:forEach var="fEach" begin="0" end="30" step="3">
    ${fEach}
</c:forEach>
</body>
</html>
