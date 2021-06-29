package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import dao.ProductReviewDAO;
import model.Product;
import model.ProductReview;

public class WriteProductReviewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = null;

		ProductReviewDAO productReviewDAO = new ProductReviewDAO();
		ProductDAO productDAO = new ProductDAO();
		ProductReview review = new ProductReview();
		ProductReviewDAO reviewDAO = new ProductReviewDAO();
		Product product = new Product();
		int pid=Integer.parseInt(req.getParameter("pid"));
		// 후기 작성페이지에서 파라미터로 테이블에 들어가야할 정보를 바당옴
		review.setProductid(Integer.parseInt(req.getParameter("pid")));
		review.setUserid(req.getParameter("id"));
		review.setProductsize(req.getParameter("size"));
		review.setRating(Integer.parseInt(req.getParameter("rating")));
		review.setReviewcon(req.getParameter("reviewcon"));
		

		if (productReviewDAO.newProReview(review)) {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("shop-detail.jsp");
		} else {
			req.setCharacterEncoding("UTF-8");
			res.setContentType("text/html; charset=UTF-8");
			PrintWriter out = res.getWriter();

			out.println("<script>alert('후기 작성에 실패하셨습니다'); history.go(-1);</script>");
		}
		
		product = productDAO.showP(pid);
		req.setAttribute("product", product);
		
		ArrayList<ProductReview> reviews = reviewDAO.showR(pid);
		req.setAttribute("reviews", reviews);
		
		forward.setRedirect(false);
		forward.setPath("shop-detail.jsp");

		return forward;

	}

}
