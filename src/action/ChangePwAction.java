package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;

public class ChangePwAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		MemberDAO memberDAO = new MemberDAO();
		HttpSession session = req.getSession();
		
		String id = (String) session.getAttribute("id");
		String pw = req.getParameter("curpw");
		String new_pw = req.getParameter("newpw");
		
		req.setCharacterEncoding("UTF-8");
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		
		if(memberDAO.updatePw(id, pw, new_pw)) {
			out.println("<script>alert('비밀번호가 변경되었습니다.'); location.href='mypage.jsp';</script>");
		} else {
			out.println("<script>alert('현재 비밀번호가 옳지 않아 변경에 실패 했습니다.'); location.href='change-passwd.jsp';</script>");
		}
		
		return null;
	}

}
