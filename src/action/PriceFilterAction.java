package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Product;

public class PriceFilterAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession();
		
		@SuppressWarnings("unchecked")
		ArrayList<Product> products = (ArrayList<Product>) session.getAttribute("products");
		ArrayList<Product> products2 = new ArrayList<Product>();
		
//		int min = Integer.parseInt(req.getParameter("min"));
//		int max = Integer.parseInt(req.getParameter("max"));
		String amount = req.getParameter("amount");
		
		System.out.println(amount);
		
		String[] str = amount.split(" ~ ");
//		String[] str = amount.split(" - ");

		String strMin=str[0];
		String strMax=str[1];
		
		System.out.println("strMin : "+strMin);
		System.out.println("strMax : "+strMax);
		int min=Integer.parseInt(strMin);
		int max=Integer.parseInt(strMax);
//		products = productDAO.showPscope(min, max);
		
		for(Product v : products) {
			if(v.getPrice()<max&&v.getPrice()>=min) {
				products2.add(v);
			}
		}
		System.out.println(products2);
		session.setAttribute("products", products2);
		
		forward.setRedirect(false);
		forward.setPath("shop.jsp");
		
		return forward;
	}
	
}
