package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;

public class FindIdAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = null;
		MemberDAO memberDAO = new MemberDAO();
		ArrayList<String> id_list = new ArrayList<>();
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		
		id_list = memberDAO.findID(name, email);
		
		req.setCharacterEncoding("UTF-8");
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();

		if(id_list == null) {
			out.println("<script>alert('일치하는 회원정보가 없습니다.'); history.go(-1); </script>");
		} else {
			req.setAttribute("name", name);
			req.setAttribute("id_list", id_list);
			forward = new ActionForward();
			forward.setPath("show-id.jsp");
			forward.setRedirect(false);
		}
		
		return forward;
	}

}
