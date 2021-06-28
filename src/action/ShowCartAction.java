package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CartDAO;
import dao.ProductDAO;
import model.Cart;
import model.Product;

public class ShowCartAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		CartDAO cartDAO = new CartDAO();
		ArrayList<Cart> carts = new ArrayList<>();
		
		String id = req.getParameter("id");
		carts = cartDAO.showC(id);
		
	
		
		req.setAttribute("carts", carts);
		
		forward.setRedirect(false);
		forward.setPath("cart.jsp");
		
		return forward;
	}

}