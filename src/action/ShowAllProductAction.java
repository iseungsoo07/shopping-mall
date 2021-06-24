package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import model.Product;

public class ShowAllProductAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		ProductDAO productDAO = new ProductDAO();
		ArrayList<Product> products = new ArrayList<>();
		
		products = productDAO.showP(); // 전체 상품 가져오기
		
		req.setAttribute("products", products);
		
		forward.setRedirect(false);
		forward.setPath("shop.jsp");
		
		return forward;
	}

}
