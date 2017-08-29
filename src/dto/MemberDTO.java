package dto;


import java.sql.Timestamp;

/**
 * Created by hyun ji Ra on 2017-08-18.
 */
public class MemberDTO {
    private String id;
    private String pw;
    private String name;
    private String phone;
    private String email;
    private String sex;
    private Timestamp date;

    public MemberDTO(){
        super();

    }
    public MemberDTO(String id,String pw,String name,String phone,String email,String sex){
        this.name = name;
        this.id = id;
        this.pw = pw;
        this.phone = phone;
        this.email = email;
        this.sex = sex;

    }
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }
}
