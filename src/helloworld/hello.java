package helloworld;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by hyun ji Ra on 2017-08-15.
 */
/*만약 web.xml에 정의되어있을 경우 web.xml이 더 우선*/
@WebServlet(name = "HelloServlet", urlPatterns = {"/hello"})
//@WebServlet("/hello")  /*가급적 지양..*/
public class hello extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("this is doGet  ");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>This is helloworld Servlet</h1>");
        out.flush();
    }
}
