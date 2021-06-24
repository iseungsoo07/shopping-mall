package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import model.Product;

public class ShowProductDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		ProductDAO productDAO = new ProductDAO();
		Product product = new Product();
		
		product = productDAO.showP(Integer.parseInt(req.getParameter("pid")));
		req.setAttribute("product", product);
		
		forward.setRedirect(false);
		forward.setPath("shop-detail.jsp");
		
		return forward;
	}

}
