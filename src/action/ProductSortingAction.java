package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import model.Product;

public class ProductSortingAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		ArrayList<Product> products = new ArrayList<>();
		
		ProductDAO productDAO = new ProductDAO();
		
		String sortBy = req.getParameter("sortBy"); // 정렬 기준을 파라미터로 전달해 받아옴
		
		// view에서 select 박스를 이용해서 정렬 기준을 선택
		// 해당 select 박스의 값을 자바스크립트로 .do로 전달
		// sortProduct.do?sortBy= + value
		
		if(sortBy.equals("lowPrice")) {
			products = productDAO.showPorderasc("price");
		} else if (sortBy.equals("highPrice")) {
			products = productDAO.showPorderde("price");
		} else if (sortBy.equals("popularity")) {
			products = productDAO.showPorderde("visit");
		}
		
		req.setAttribute("products", products);
		
		forward.setRedirect(false);
		forward.setPath("shop.jsp");
		
		return forward;
	}

}
