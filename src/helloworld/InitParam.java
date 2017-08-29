package helloworld;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

/**
 * Created by hyun ji Ra on 2017-08-16.
 */
//@WebServlet(name = "InitParam")
/*밑의 어노테이션 사용시, web.xml은 주석처리...*/
@WebServlet(name = "InitParam", urlPatterns = {"/initparam"}, initParams = {@WebInitParam(name="id",value = "aaaa"),@WebInitParam(name="pw",value = "bbbbb")})

public class InitParam extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id= getInitParameter("id"); //web.xml에서 정의됨
        String pw= getInitParameter("pw");
        String contextID = getServletContext().getInitParameter("contextParamID");
        String contextPW = getServletContext().getInitParameter("contextParamPW");

        response.setContentType("text/html; charset=EUC-KR"); // 이거 한글 안깨지게 하는거..

        PrintWriter out = response.getWriter();
        out.println("<html><head></head><body>");
        out.println("아이디 : " + id + "<br>");
        out.println("비밀번호 : " + pw + "<br>");
        out.println("컨텍스트아이디 : " + contextID + "<br>");
        out.println("컨텍스트비밀번호 : " + contextPW + "<br>");
        out.println("</body></html>");
        out.flush();
    }
}
