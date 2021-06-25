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

public class NewProductReviewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		ActionForward forward = new ActionForward();

		ProductDAO productDAO = new ProductDAO();
		Product product = new Product();
		
		ProductReviewDAO reviewDAO = new ProductReviewDAO();
		ProductReview review = new ProductReview();

		// 	Im thinking about removing the productsize. 
		int pid = Integer.parseInt(req.getParameter("productid"));
		String uid = req.getParameter("uid");
		String productsize = req.getParameter("productsize");
		int rating = Integer.parseInt(req.getParameter("rating"));
		String con = req.getParameter("reviewcontent");

		// you must register the values ​​below.
		review.setUserid(uid);
		review.setProductid(pid);
		review.setProductsize(productsize);
		review.setRating(rating);
		review.setReviewcon(con);

		System.out.println(req.getParameter("rcon"));

		if (!reviewDAO.newProReview(review)) {
			System.out.println("Review registration failed");
		}

		
		// send product information 
		product = productDAO.showP(pid);
		req.setAttribute("product", product);	
		
		// send productReview information 
		ArrayList<ProductReview> reviews = reviewDAO.showR(pid);
		req.setAttribute("reviews", reviews);

		forward.setRedirect(false);
		forward.setPath("shop-detail.jsp");
		return forward;

	}

}
