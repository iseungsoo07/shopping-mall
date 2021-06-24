package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductReviewDAO;
import model.Product;
import model.ProductReview;

public class ShowReviewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		ProductReviewDAO productReviewDAO = new ProductReviewDAO();
		Product product = new Product();
		
		ArrayList<ProductReview> reviews = new ArrayList<>();
		
		product.setPid(Integer.parseInt(req.getParameter("pid")));
		
		reviews = productReviewDAO.showR(product);
		req.setAttribute("reviews", reviews);
		
		forward.setRedirect(false);
		forward.setPath("shop-detail.jsp");
		
		return null;
	}

}
