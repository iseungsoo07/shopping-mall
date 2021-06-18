package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

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

		if (id == null) {
			out.println("<script>alert('Please enter your ID'); history.go(-1); </script>");
		} else {
			if (memberDAO.isIdDup(id)) { // True if the same id exists after comparing ids -> Overlaped
				out.println("<script>alert('The same ID exists.'); history.go(-1); </script>");
			} else { // not Overlap
				req.setAttribute("id", id);
				forward = new ActionForward();
				forward.setPath("show-id.jsp");
				forward.setRedirect(false);
			}
		}
		forward = new ActionForward();
		forward.setPath("login.jsp");
		forward.setRedirect(false);
		return forward;

	}
}
