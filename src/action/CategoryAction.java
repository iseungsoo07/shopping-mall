package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import model.Product;

public class CategoryAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		ActionForward forward = new ActionForward();
		
		ProductDAO productDAO = new ProductDAO();
		String category = req.getParameter("category"); // a태그에 카테고리를 파라미터로 넘겨주는 식
		ArrayList<Product> datas = new ArrayList<>();
		
		datas = productDAO.showPByCategory(category);
		req.setAttribute("datas", datas);
		
		forward.setRedirect(false);
		forward.setPath("shop.jsp"); 

		return forward;
	}

}
