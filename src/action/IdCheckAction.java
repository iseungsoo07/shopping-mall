package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;

public class IdCheckAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		MemberDAO memberDAO = new MemberDAO();
		String id = req.getParameter("id");

		req.setCharacterEncoding("UTF-8");
		res.setContentType("text/html; charset=utf-8");

		PrintWriter out = res.getWriter();

		if (memberDAO.isIdDup(id)) {
			out.println("<script>alert('이미 사용중인 아이디입니다.'); history.go(-1); </script>");
		} else {
			out.println("<script>alert('사용 가능한 아이디입니다.'); history.go(-1); </script>");
		}

		return null;
	}
}
