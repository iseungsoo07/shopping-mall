package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductReviewDAO;
import model.ProductReview;

public class UpdateReviewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = null;

		ProductReviewDAO productReviewDAO = new ProductReviewDAO();

		ProductReview review = new ProductReview();

		review.setReviewid(Integer.parseInt(req.getParameter("reviewId")));
		review.setReviewcon(req.getParameter("con"));
		review.setRating(Integer.parseInt(req.getParameter("rating")));
		
		
		if (productReviewDAO.updateProReview(review)) {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("shop-detail.jsp");
		} else {
			req.setCharacterEncoding("UTF-8");
			res.setContentType("text/html; charset=UTF-8");
			PrintWriter out = res.getWriter();

			out.println("<script>alert('후기 수정에 실패하셨습니다'); history.go(-1);</script>");
		}

		return forward;
	}

}
