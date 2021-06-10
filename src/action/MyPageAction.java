package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import model.Member;

public class MyPageAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		MemberDAO memberDAO = new MemberDAO();
		Member member = new Member();
		
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		
		if(id == null) {
			System.out.println("로그인하지 않은상태. 로그인 먼저 시도.");
			forward.setRedirect(true);
			forward.setPath("login.jsp");
		} else {
			member = memberDAO.getMember(id);
			session.setAttribute("member", member);
			forward.setRedirect(false);
			forward.setPath("mypage.jsp");
		}
		
		return forward;
	}

}
