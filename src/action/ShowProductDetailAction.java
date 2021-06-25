package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import dao.ProductReviewDAO;
import model.Product;
import model.ProductReview;

public class ShowProductDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		ProductReviewDAO reviewDAO = new ProductReviewDAO();
		ProductDAO productDAO = new ProductDAO();
		Product product = new Product();
		
		int pid=Integer.parseInt(req.getParameter("pid"));
		
		product = productDAO.showP(pid);
		req.setAttribute("product", product);
		
		ArrayList<ProductReview> reviews = reviewDAO.showR(pid);
		req.setAttribute("reviews", reviews);
		
		forward.setRedirect(false);
		forward.setPath("shop-detail.jsp");
		
		return forward;
	}

}
