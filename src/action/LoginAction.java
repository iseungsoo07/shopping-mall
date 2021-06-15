package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
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
		String saveId = req.getParameter("saveId");
		HttpSession session = req.getSession();

		if (memberDAO.login(id, pw)) {
			if(saveId != null) {
				Cookie c = new Cookie("saveId", id); // 아이디 저장이 눌려있다면 쿠키로 아이디값 저장
				c.setMaxAge(60 * 60 * 24 * 7); // 7일간 저장
				res.addCookie(c);
			} else { // 그렇지 않으면 쿠키 삭제
				Cookie c = new Cookie("saveId", id);
				c.setMaxAge(0); 
				res.addCookie(c);
			}
			
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
