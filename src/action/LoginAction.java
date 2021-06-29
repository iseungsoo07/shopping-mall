package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CartDAO;
import dao.MemberDAO;
import model.Cart;
import model.Member;

public class LoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		ActionForward forward = null;
		MemberDAO memberDAO = new MemberDAO();
		CartDAO cartDAO = new CartDAO();
		ArrayList<Cart> carts = new ArrayList<>();
		Member member = null;

		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String saveId = req.getParameter("saveId");
		HttpSession session = req.getSession();

		if (memberDAO.login(id, pw)) {
			if(saveId != null) {
				Cookie c = new Cookie("saveId", id); // �븘�씠�뵒 ���옣�씠 �닃�젮�엳�떎硫� 荑좏궎濡� �븘�씠�뵒媛� ���옣
				c.setMaxAge(60 * 60 * 24 * 7); // 7�씪媛� ���옣
				res.addCookie(c);
			} else { // 洹몃젃吏� �븡�쑝硫� 荑좏궎 �궘�젣
				Cookie c = new Cookie("saveId", id);
				c.setMaxAge(0); 
				res.addCookie(c);
			}
			
			
			carts = cartDAO.showC(id);
			session.setAttribute("carts", carts);
			
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
