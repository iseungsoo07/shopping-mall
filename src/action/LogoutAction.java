package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		HttpSession session = req.getSession();
		
		session.removeAttribute("id");
		session.removeAttribute("member");
		forward.setRedirect(true);
		forward.setPath("home.jsp");
		
		return forward;
	}
}
