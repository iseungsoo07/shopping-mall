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
		ActionForward forward = null;
		MemberDAO memberDAO = new MemberDAO();
		String id = req.getParameter("id");

		req.setCharacterEncoding("UTF-8");
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();

		if (id == "") {
			out.println("<script>alert('아이디를 입력해주세요'); history.go(-1); </script>");
		} else {
			if (memberDAO.isIdDup(id)) { // True if the same id exists after comparing ids -> Overlaped
				out.println("<script>alert('사용할 수 없는 아이디입니다.'); history.go(-1); </script>");
			} else { // not Overlap
				out.println("<script>alert('사용 가능한 아이디입니다.'); history.go(-1); </script>");
			}
		}

		return forward;
	}

}
