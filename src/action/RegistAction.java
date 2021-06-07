package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dto.MemberBean;

public class RegistAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		ActionForward forward = new ActionForward();
		MemberDAO memberDAO = new MemberDAO();
		MemberBean mb = new MemberBean();
		
		mb.setId(req.getParameter("id"));
		mb.setPw(req.getParameter("pw"));
		mb.setName(req.getParameter("name"));
		mb.setPhone(req.getParameter("phone"));
		mb.setEmail(req.getParameter("email1") + "@" + req.getParameter("email2"));
		mb.setAddr(req.getParameter("addr") + " " + req.getParameter("detailAddr") + req.getParameter("referAddr"));

		memberDAO.regist(mb);
		
		forward.setRedirect(true);
		forward.setPath("login.jsp");

		return forward;
	}

}
