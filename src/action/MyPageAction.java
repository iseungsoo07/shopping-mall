package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import model.Member;

public class MyPageAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = null;
		MemberDAO memberDAO = new MemberDAO();
		Member member = new Member();

		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");

		if (id == null) {
			req.setCharacterEncoding("UTF-8");
			res.setContentType("text/html; charset=UTF-8");
			PrintWriter out = res.getWriter();
			out.println("<script>alert('로그인을 먼저 시도하세요'); location.href='login.jsp'; </script>");
		} else {
			member = memberDAO.getMember(id);
			session.setAttribute("member", member);
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("mypage.jsp");
		}

		return forward;
	}

}
