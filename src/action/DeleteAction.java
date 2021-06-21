package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;

public class DeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		MemberDAO memberDAO = new MemberDAO();

		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");

		if (memberDAO.delete(id, req.getParameter("pw"))) {
			session.invalidate();
			
			req.setCharacterEncoding("UTF-8");
			res.setContentType("text/html; charset=UTF-8");
			PrintWriter out = res.getWriter();
			out.println("<script>alert('회원 탈퇴가 완료되었습니다.'); location.href='home.jsp'; </script>");
		} else {
			req.setCharacterEncoding("UTF-8");
			res.setContentType("text/html; charset=UTF-8");
			PrintWriter out = res.getWriter();
			out.println("<script>alert('비밀번호가 일치하지 않습니다.'); history.go(-1); </script>");
		}

		return null;
	}

}
