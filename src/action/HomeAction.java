package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import model.Product;

public class HomeAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		ActionForward forward = new ActionForward();
		ProductDAO productDAO = new ProductDAO();
		
		ArrayList<Product> bestSell = new ArrayList<>();
		
		bestSell = productDAO.showBestSeller();
		System.out.println(bestSell);

		req.setAttribute("bestSell", bestSell);
		
		forward.setRedirect(false);
		forward.setPath("home.jsp");
		
		return forward;
	}

}
