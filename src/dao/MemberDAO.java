package dao;

import dto.MemberDTO;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;

/**
 * Created by hyun ji Ra on 2017-08-18.
 */
public class MemberDAO {
    private DataSource dataSource;
    private Connection m_connection = null;
    private Statement statement = null;
    private ResultSet resultSet = null;

    public static final int MEMBER_NONEXISTENT = 0;
    public static final int MEMBER_EXISTENT =1;
    public static final int MEMBER_JOIN_FAIL = 0;
    public static final int MEMBER_JOIN_SUCCESS = 1;
    public static final int MEMBER_LOGIN_PW_NO_GOOD = 0;
    public static final int MEMBER_LOGIN_SUCCESS =1;
    public static final int MEMBER_LGOIN_IS_NOT = -1;
    private static MemberDAO instance = new MemberDAO();

//        아래 주석은 커넥션풀을 쓰지 않았을때 노가다작업
//    private String m_database = "helloworld";
    private String m_table = "member";
//    private String m_driver = "com.mysql.jdbc.Driver";
//    private String m_url= "jdbc:mysql://localhost:3306/"+m_database;
//    private String m_dbID = "root";
//    private String m_dbPW = "1234";
    private MemberDAO(){

//        아래 주석은 커넥션풀을 쓰지 않았을때 노가다작업
//        try {
//            Class.forName(m_driver);
//            //m_connection = DriverManager.getConnection(m_url,m_dbID,m_dbPW);
//        }catch (Exception e){
//            System.out.println("error : " + e.toString());
//        }

        try{
            Context context = new InitialContext();
            dataSource =(DataSource)context.lookup("java:comp/env/jdbc/mysql");
//            dataSource.getConnection();
        }catch (Exception e){
            System.out.println("error : " + e.toString());
        }
    }
    public static MemberDAO getInstance(){
        //보안을 위해 생성자를 private으로 선언하였기 때문에 객체 생성을 위해 getinstance 함수를 만들음..
        return instance;
    }
    public ArrayList<MemberDTO> memberSelect(){
        ArrayList<MemberDTO> dtos = new ArrayList<MemberDTO>();
        try {
//        아래 주석은 커넥션풀을 쓰지 않았을때 노가다작업
//            m_connection = DriverManager.getConnection(m_url,m_dbID,m_dbPW);
//            statement = m_connection.createStatement();
//            resultSet = statement.executeQuery("SELECT  * from "+m_table);

            m_connection = dataSource.getConnection();
            statement = m_connection.createStatement();
            resultSet = statement.executeQuery("SELECT  * from "+m_table);
            while (resultSet.next()){
                String name = resultSet.getString("name");
                String id = resultSet.getString("id");
                String pw = resultSet.getString("pw");
                String phone = resultSet.getString("phone");
                String email = resultSet.getString("email");
                String sex = resultSet.getString("sex");
                MemberDTO dto = new MemberDTO(id,pw,name,phone,email,sex);
                dtos.add(dto);

            }
        }catch (Exception e){
            System.out.println("error : " + e.toString());
        }finally {
            try {
                if(resultSet!=null) resultSet.close();
                if(statement!=null) statement.close();
                if(m_connection!=null) m_connection.close();

            }catch (Exception e){
                System.out.println("error : " + e.toString());
            }
        }
        return dtos;
    }
    public int insertMember(MemberDTO dto){
        int ri = 0;
        m_connection = null;
        PreparedStatement preparedStatement = null;

        try {
            m_connection = dataSource.getConnection();
            String query = "insert into member values(?,?,?,?,?,?,?)";
            preparedStatement = m_connection.prepareStatement(query);
            preparedStatement.setString(1,dto.getId());
            preparedStatement.setString(2,dto.getPw());
            preparedStatement.setString(3,dto.getName());
            preparedStatement.setString(4,dto.getPhone());
            preparedStatement.setString(5,dto.getEmail());
            preparedStatement.setString(6,dto.getSex());
            preparedStatement.setTimestamp(7,dto.getDate());
            preparedStatement.executeUpdate();
            ri = MemberDAO.MEMBER_JOIN_SUCCESS;
        }catch (Exception e){
            System.out.println("error : " + e.toString());
        }finally {
            try {
                if(preparedStatement != null) preparedStatement.close();
                if(m_connection != null) m_connection.close();
            }catch (Exception e){
                System.out.println("error : " + e.toString());
            }

        }
        return ri;
    }
    public  int updateMember(MemberDTO dto){
        m_connection = null;
        int ri=0;
        PreparedStatement preparedStatement = null;

        try {
            m_connection = dataSource.getConnection();
            String query = "UPDATE member set phone=?,email=?,sex=? where id=?";
            preparedStatement = m_connection.prepareStatement(query);
            preparedStatement.setString(1,dto.getPhone());
            preparedStatement.setString(2,dto.getEmail());
            preparedStatement.setString(3,dto.getSex());
            preparedStatement.setString(4,dto.getId());
            preparedStatement.executeUpdate();
            ri = 1;
        }catch (Exception e){
            System.out.println("error : " + e.toString());
        }finally {
            try {
                if(preparedStatement != null) preparedStatement.close();
                if(m_connection != null) m_connection.close();
            }catch (Exception e){
                System.out.println("error : " + e.toString());
            }

        }return ri;
    }


    public int confirmId(String id){
        int ri = 0;
        m_connection = null;
        PreparedStatement preparedStatement = null;
        resultSet = null;
        String query = "select id from member where id = ?";
        try {
            m_connection = dataSource.getConnection();
            preparedStatement = m_connection.prepareStatement(query);
            preparedStatement.setString(1,id);
            resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                ri = MemberDAO.MEMBER_EXISTENT;
            }else{
                ri = MemberDAO.MEMBER_NONEXISTENT;
            }
        }catch (Exception e){
            System.out.println("error : " + e.toString());
        }finally {
            try {
                if(resultSet!=null) resultSet.close();
                if(preparedStatement!=null) preparedStatement.close();
                if(m_connection!=null) m_connection.close();

            }catch (Exception e){
                System.out.println("error : " + e.toString());
            }
        }
        return  ri;
    }
    public MemberDTO getMember(String id){
        m_connection = null;
        PreparedStatement preparedStatement = null;
        resultSet = null;
        String query = "select * from member where id =?";
        MemberDTO dto = null;
        try{
            m_connection = dataSource.getConnection();
            preparedStatement = m_connection.prepareStatement(query);
            preparedStatement.setString(1,id);
            resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                dto = new MemberDTO();
                dto.setId(resultSet.getString("id"));
                dto.setPw(resultSet.getString("pw"));
                dto.setName(resultSet.getString("name"));
                dto.setEmail(resultSet.getString("email"));
                dto.setPhone(resultSet.getString("phone"));
                dto.setSex(resultSet.getString("sex"));
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try {
                if(resultSet!=null) resultSet.close();
                if(preparedStatement!=null) preparedStatement.close();
                if(m_connection!=null) m_connection.close();
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        return dto;
    }
    public int userCheck(String id, String pw){
        int ri=0;
        m_connection = null;
        PreparedStatement preparedStatement = null;
        resultSet = null;
        String query = "select * from member where id =? and pw= ?";
        try{
            m_connection = dataSource.getConnection();
            preparedStatement = m_connection.prepareStatement(query);
            preparedStatement.setString(1,id);
            preparedStatement.setString(2,pw);
            resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                ri = 1;
            }else
                ri = -1;

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try {
                if(resultSet!=null) resultSet.close();
                if(preparedStatement!=null) preparedStatement.close();
                if(m_connection!=null) m_connection.close();

            }catch (Exception e){
                e.printStackTrace();
            }
        }
        return  ri;
    }
    public  ArrayList<MemberDTO> membersAll(){
        ArrayList<MemberDTO> dtos = new ArrayList<MemberDTO>();
        m_connection=null;
        MemberDTO dto = null;
        PreparedStatement preparedStatement = null;
        resultSet = null;
        String query = "select * from member";
        try{
            m_connection = dataSource.getConnection();
            preparedStatement = m_connection.prepareStatement(query);
            resultSet = preparedStatement.executeQuery();
            System.out.println("=================");
            if(resultSet.next()){
                 dto = new MemberDTO();
                dto.setId(resultSet.getString("id"));
                dto.setPw(resultSet.getString("pw"));
                dto.setName(resultSet.getString("name"));
                dto.setEmail(resultSet.getString("email"));
                dto.setPhone(resultSet.getString("phone"));
                dto.setSex(resultSet.getString("sex"));
                dtos.add(dto);

            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try {
                if(resultSet!=null) resultSet.close();
                if(preparedStatement!=null) preparedStatement.close();
                if(m_connection!=null) m_connection.close();
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        return dtos;
    }

}
