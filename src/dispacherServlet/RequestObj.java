package dispacherServlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by hyun ji Ra on 2017-08-22.
 */
@WebServlet(name = "RequestObj", urlPatterns = {"/requestobj"})
public class RequestObj extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doPost");
        actionDo(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet");
        actionDo(request,response);
    }

    private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*RequestDispatcher 사용시*/
        System.out.println("actionDo");
        request.setAttribute("id","adbcde");
        request.setAttribute("pw","12345");
        request.setAttribute("jstlVar","jstlaaaaaaa");
        request.setAttribute("paramVar","paramieterdga");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/dispacherjspView/dispacherjsp.jsp");
        dispatcher.forward(request,response);
//        ---------------------------------------
//        System.out.println("actionDo");
//        String id = (String) request.getAttribute("id");
//        String pw = (String) request.getAttribute("pw");
//        response.setContentType("text/html;charset=UTF-8");
//        PrintWriter writer = response.getWriter();
//        writer.println("<html><head></head><body>");
//        writer.print("RequestObj <br>");
//        writer.print("id: "+id+  "<br>");
//        writer.print("pw: "+pw+  "<br>");
//        writer.print("RequestObj <br>");
//        writer.println("</body></html>");


    }
}
