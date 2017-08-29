package helloworld;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
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

/*form 태그의 action에는 서블릿의 url패턴과 같아야 해당 서블릿을 호출. */
@WebServlet(name = "PostMethod", urlPatterns = {"/postmethod"})
public class PostMethod extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("PostMethod this is doPost  ");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>PostMethod  This is helloworld Servlet doPost</h1>");
        out.flush();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("PostMethod this is doGet");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>PostMethod   This is helloworld Servlet doGet</h1>");
        out.flush();
    }

    @Override
    public void init() throws ServletException {
        super.init();
        System.out.println("init 메소드 호출");
    }

    @Override
    public void destroy() {
        super.destroy();
        System.out.println("destroy 메소드 호출");
    }

    /* 선처리 후처리 메소드
    @PostConstruct //선처리 메소드 (init 메소드 보다 먼저 호출됨)
    private void initPostConstruct(){
        System.out.println("PostConstruct 메소드 호출");
    }

    @PreDestroy //후처리 메소드 (destroy 메소드 보다 먼저 호출됨)
    private void destroyPreConstruct(){
        System.out.println("PreConstruct 메소드 호출");
    }
    */
}
