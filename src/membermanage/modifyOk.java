package membermanage;

import been.DBConnetor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

/**
 * Created by hyun ji Ra on 2017-08-18.
 */
@WebServlet(name = "modifyOk",urlPatterns = {"/membermanage/modifyok"})
public class modifyOk extends HttpServlet {
    private Connection con = null;
    private Statement statement = null;
    HttpSession httpSession;
    private String name;
    private String pw;
    private String id;
    private String phone;
    private String sex;
    private String email;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doPost");
        actionData(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet");
        actionData(request,response);
    }

    private void actionData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("EUC-KR");
        httpSession = request.getSession();
        id = (String)httpSession.getAttribute("id");
        name = request.getParameter("name");
        pw = request.getParameter("pw");
        email = request.getParameter("email");

        phone = request.getParameter("phone");
        sex = request.getParameter("sex");

        if (pwConfirm()) {
            System.out.println("수정 전 본인 인증Ok");
            System.out.println("email: "+ email);

            String query = "update member set name=\"" + name + "\",email=\"" + email + "\",phone=\"" + phone + "\",sex=\"" + sex + "\" where id=\"" + id + "\"";
            DBConnetor dbConnetor = new DBConnetor();
            con = dbConnetor.makeConnection();

            try {
                statement = con.createStatement();
                int i = statement.executeUpdate(query);
                if (i == 1) {
                    System.out.println("update success");
                    response.sendRedirect("modifyResult.jsp");
                } else {
                    System.out.println("update fail");
                    response.sendRedirect("modify.jsp");
                }

            } catch (Exception e) {
                System.out.println("error : " + e.toString());
            } finally {
                try {
                    if (statement != null) statement.close();
                    if (con != null) con.close();
                } catch (Exception e) {
                    System.out.println("error : " + e.toString());
                }

            }
        } else {
            System.out.println("본인인증 실패");
            response.sendRedirect("modify.jsp");
        }
    }

    private boolean pwConfirm(){
        boolean rs = false;
        String sessionPw = (String)httpSession.getAttribute("pw");
        if(sessionPw.equals(pw)){
            rs = true;
        }else rs = false;
        return rs;
    }
}
