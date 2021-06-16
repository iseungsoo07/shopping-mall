package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;

public class IdCheckAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		return null;
	}
	
	public int checkIdDup(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		MemberDAO memberDAO = new MemberDAO();
		
		if(memberDAO.isIdDup(req.getParameter("id"))) {
			return 1;
		} 
		
		return 0;
	}

}
