package action;

import java.io.IOException;



import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	ActionForward execute (HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException;
}
