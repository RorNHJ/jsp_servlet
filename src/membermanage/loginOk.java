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
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Created by hyun ji Ra on 2017-08-18.
 */
@WebServlet(name = "loginOk",urlPatterns = {"/membermanage/loginok"})
public class loginOk extends HttpServlet {
    private Connection con = null;
    private Statement statement = null;
    private ResultSet resultSet = null;

    private String pw;
    private String name = null;
    private String id;
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
        pw =request.getParameter("pw");
        id =request.getParameter("id");

        String query = "select * from member where id = \"" + id +"\" and pw = \"" + pw +"\"";
        DBConnetor dbConnetor = new DBConnetor();
        con = dbConnetor.makeConnection();
        try {
            statement = con.createStatement();
            resultSet = statement.executeQuery(query);

            while (resultSet.next()){
                name = resultSet.getString("name");
                id = resultSet.getString("id");
                pw = resultSet.getString("pw");
            }
            if(name != null) {
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("name", name);
                httpSession.setAttribute("id", id);
                httpSession.setAttribute("pw", pw);
                response.sendRedirect("loginResult.jsp");
            }else response.sendRedirect("login.html");

        }catch (Exception e){System.out.println("error : " + e.toString());
        }finally {
            try {
                if (statement != null) statement.close();
                if (resultSet != null) resultSet.close();
                if (con != null) con.close();
            }catch (Exception e) { System.out.println("error : "+e.toString());}

        }
    }
}
