package been;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Created by hyun ji Ra on 2017-08-17.
 */
public class DBConnetor {
    private Connection m_connection = null;
    private String m_database = "helloworld";
    private String m_table = "member";
    private String m_driver = "com.mysql.jdbc.Driver";
    private String m_url= "jdbc:mysql://localhost:3306/"+m_database;
    private String m_dbID = "root";
    private String m_dbPW = "1234";

    public DBConnetor(){
        try {
            Class.forName(m_driver);
            m_connection = DriverManager.getConnection(m_url,m_dbID,m_dbPW);
        }catch (Exception e){
            System.out.println("error : " + e.toString());
        }
    }
    public Connection makeConnection (){
        return m_connection;
    }
}
