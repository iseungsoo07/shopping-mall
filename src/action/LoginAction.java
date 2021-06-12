package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import model.Member;

public class LoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		ActionForward forward = null;
		MemberDAO memberDAO = new MemberDAO();
		Member member = null;

		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		HttpSession session = req.getSession();

		if (memberDAO.login(id, pw)) {
			member = memberDAO.getMember(id);
			session.setAttribute("member", member);
			session.setAttribute("id", id);
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("home.jsp");
			System.out.println(session.getAttribute("id"));
		} else {
			req.setCharacterEncoding("UTF-8");
			res.setContentType("text/html; charset=UTF-8");
			PrintWriter out = res.getWriter();
			
			out.println("<script>alert('회원 정보가 없습니다. 다시 시도하세요.'); location.href='login.jsp'; </script>");
		}

		return forward;

	}

}
