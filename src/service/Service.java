package service;

import dao.MemberDAO;
import dto.MemberDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 * Created by hyun ji Ra on 2017-08-22.
 */
public interface Service {
    public ArrayList<MemberDTO> execute(HttpServletRequest request, HttpServletResponse response);

}
