package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;

public class NewPwAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		MemberDAO memberDAO = new MemberDAO();
		
		String id = req.getParameter("id");
		String email = req.getParameter("email");
		
		String new_pw = memberDAO.reissuancePW(id, email);

		req.setAttribute("new_pw", new_pw);
		forward.setPath("show-pw.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
