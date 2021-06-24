package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductReviewDAO;
import model.ProductReview;


public class ShowReviewAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		ProductReviewDAO proReviewDAO = new ProductReviewDAO();
		ProductReview review = new ProductReview();  			
		
		
		ArrayList<ProductReview> datas = proReviewDAO.showR(null);
		req.setAttribute("datas", datas);	//전체 review 내용을 받아와 저장
		
		forward.setRedirect(false);
		forward.setPath(".jsp"); //어떤 jsp로 가야할까
		
		
		
		
		return forward;
	}
}
