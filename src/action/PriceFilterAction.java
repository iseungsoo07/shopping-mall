package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import model.Product;

public class PriceFilterAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		ProductDAO productDAO = new ProductDAO();
		
		ArrayList<Product> products = new ArrayList<>();
		
//		int min = Integer.parseInt(req.getParameter("min"));
//		int max = Integer.parseInt(req.getParameter("max"));
		String amount = req.getParameter("amount");
		
		System.out.println(amount);
		
		String[] str = amount.split(" - ");
		String strMin=str[0].substring(1);
		String strMax=str[1].substring(1);
		System.out.println("strMin : "+strMin);
		System.out.println("strMax : "+strMax);
		int min=Integer.parseInt(strMin);
		int max=Integer.parseInt(strMax);
		products = productDAO.showPscope(min, max);
		
		System.out.println(products);
		req.setAttribute("products", products);
		
		forward.setRedirect(false);
		forward.setPath("shop.jsp");
		
		return forward;
	}
	
}
