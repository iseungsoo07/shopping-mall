package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ChangeInfoAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("change-info.jsp");
		
		return forward;
	}

}
