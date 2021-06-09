package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dto.Member;

public class LoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		ActionForward forward = new ActionForward();
		MemberDAO memberDAO = new MemberDAO();
		Member member = null;

		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		HttpSession session = req.getSession();

		if (memberDAO.login(id, pw)) {
			System.out.println("로그인 성공");
			member = memberDAO.getMember(id);
			session.setAttribute("member", member);
			session.setAttribute("id", id);
			forward.setRedirect(false);
			forward.setPath("home.jsp");
			System.out.println(session.getAttribute("id"));
		} else {
			System.out.println("로그인 실패");
			forward.setRedirect(true);
			forward.setPath("login.jsp");
		}

		return forward;

	}

}
