package helloworld;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Enumeration;

/**
 * Created by hyun ji Ra on 2017-08-15.
 */
@WebServlet(name = "JoinUs",urlPatterns = {"/joinus"})
public class JoinUs extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        /*getParameter(name) : name의 값을 반환
        * getParameterValues(name) : name 체크박스일경우 복수의 값을 반환
        * getParameterNames() : request의 모든 name값들을 반환 */
        Enumeration<String> names = request.getParameterNames();
        String id =request.getParameter("id");
        String pw =request.getParameter("pw");
        String[] hobby = request.getParameterValues("hobby");
        String sex = request.getParameter("sex");
        String protocol = request.getParameter("protocol");

        System.out.println("joinus 결과 페이지입니다. ");
        System.out.print("넘어온 파라미터: ");
        while(names.hasMoreElements()){
            System.out.print("  "+names.nextElement());
        }
        System.out.println("");
        response.setContentType("text/html; charset=EUC-KR"); // 이거 한글 안깨지게 하는거..

        PrintWriter out = response.getWriter();
        out.println("<html><head></head><body>");
        out.println("아이디 : " + id + "<br>");
        out.println("비밀번호 : " + pw + "<br>");
        out.println("취미 : " + Arrays.toString(hobby) + "<br>");
        out.println("성별 : " + sex + "<br>");
        out.println("프로토콜 : " + protocol + "<br>");
        out.println("</body></html>");

        out.flush();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
