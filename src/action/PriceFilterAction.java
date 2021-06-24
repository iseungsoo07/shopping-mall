package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import model.Product;

public class PriceFilterAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		ProductDAO productDAO = new ProductDAO();
		
		ArrayList<Product> products = new ArrayList<>();
		
		int min = Integer.parseInt(req.getParameter("min"));
		int max = Integer.parseInt(req.getParameter("max"));
		
		products = productDAO.showPscope(min, max);
		
		req.setAttribute("products", products);
		
		forward.setRedirect(false);
		forward.setPath("shop.jsp");
		
		return forward;
	}
	
}
