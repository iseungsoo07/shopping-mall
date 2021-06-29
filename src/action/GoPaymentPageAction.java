package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cart;

public class GoPaymentPageAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession();
		ArrayList<Cart> carts = new ArrayList<>();
		
		carts = (ArrayList<Cart>) session.getAttribute("carts");
		
		forward.setRedirect(false);
		forward.setPath("payment.jsp");
		
		return forward;
	}
}
