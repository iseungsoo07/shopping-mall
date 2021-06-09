package action;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dto.Member;

public class MyPageAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		MemberDAO memberDAO = new MemberDAO();
		Member member = new Member();
		
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		
		if(id == null) {
			System.out.println("濡쒓렇�씤�븯吏� �븡���긽�깭. 濡쒓렇�씤 癒쇱� �떆�룄.");
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
