<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //디렉토리만 만들어놓고 내용물이 없다면 폴더는 만들어지지 않는다..왜그럴까
    //fileFolder를 만들어놓고 war에 올라갔다면 상관없듬..
    //암튼 fileFolder을 만드는 작업이 아니고 있다면 거기다 저장하라는 뜻.
    String path = request.getSession().getServletContext().getRealPath("fileFolder");

    System.out.println("path: " + path);

    int size = 1024*1024*10; // 최대 10M 용량
    String file = "";
    String oriFile = "";
    try{
        MultipartRequest multi = new MultipartRequest(request,path,size,"UTF-8",new DefaultFileRenamePolicy());
        Enumeration files = multi.getFileNames();
        String str = (String)files.nextElement();
        file = multi.getFilesystemName(str);
        oriFile = multi.getOriginalFileName(str); //만약에 중복된 파일이름을 업로드시에 자동으로 리네임..(파일(1),(2)) 이렇게..
    }catch (Exception e){
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>file upload success!!</h1>
</body>
</html>
