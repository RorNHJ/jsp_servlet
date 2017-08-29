package service;

import dao.MemberDAO;
import dto.MemberDTO;
import service.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 * Created by hyun ji Ra on 2017-08-22.
 */
public class MembersAllService implements Service{
    public MembersAllService(){

    }
    @Override
    public ArrayList<MemberDTO> execute(HttpServletRequest request, HttpServletResponse response){
        MemberDAO dao =MemberDAO.getInstance();
        return  dao.membersAll();
    }

}
