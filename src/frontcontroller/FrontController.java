package frontcontroller;

import dto.MemberDTO;
import service.MembersAllService;
import service.Service;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;

/**
 * Created by hyun ji Ra on 2017-08-22.
 */
@WebServlet(name = "FrontController", urlPatterns = {"*.do"})
public class FrontController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet");
        actionDo(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet");
        actionDo(request,response);
    }
    private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("actionDo");
        String uri = request.getRequestURI();
        System.out.println("uri: "+ uri);
        if(uri.contains("/membersAll.do")){
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter writer = response.getWriter();
            writer.println("<html><head></head><body>");
            Service service = new MembersAllService();
            ArrayList<MemberDTO> dtos = service.execute(request,response);

            for(int i =0 ;i<dtos.size();i++){
                MemberDTO dto = dtos.get(i);
                String id = dto.getId();
                String pw = dto.getPw();
                String name = dto.getName();
                String phone = dto.getPhone();
                String email = dto.getEmail();
                String sex = dto.getSex();
                Timestamp date = dto.getDate();
                writer.println(id+",  "+name+",  "+pw+",  "+phone+",  "+email+",  "+sex+",  "+date+",  ");
            }
            writer.println("</body></html>");
        }

    }
}
