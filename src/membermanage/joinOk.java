package membermanage;

import been.DBConnetor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Created by hyun ji Ra on 2017-08-17.
 */
@WebServlet(name = "joinOk",urlPatterns = {"/membermanage/joinok"})
public class joinOk extends HttpServlet {
    private Connection con = null;
    private Statement statement = null;

    private String name;
    private String id;
    private String pw;
    private String email1;
    private String email2;
    private String phone;
    private String sex;

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
        name =request.getParameter("name");
        id =request.getParameter("id");
        pw =request.getParameter("pw");
        email1 =request.getParameter("email1");
        email2 =request.getParameter("email2");
        String email = email1 + "@" + email2;
        phone =request.getParameter("phone");
        sex =request.getParameter("sex");
        String query = "insert into member values(\"" + id+"\",\""+pw+"\",\""+name+"\",\""+phone+"\",\""+email+"\",\""+sex+"\")";
        DBConnetor dbConnetor = new DBConnetor();
        con = dbConnetor.makeConnection();
        try {
            statement = con.createStatement();
            int i = statement.executeUpdate(query);
            if(i==1) {
                System.out.println("Insert success");
                response.sendRedirect("joinResult.jsp");
            }

            else{
                System.out.println("Insert fail");
                response.sendRedirect("join.html");
            }

        }catch (Exception e){System.out.println("error : " + e.toString());
        }finally {
            try {
                if (statement != null) statement.close();
                if (con != null) con.close();
            }catch (Exception e) { System.out.println("error : "+e.toString());}

        }


    }
}
