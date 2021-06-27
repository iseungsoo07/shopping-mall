package action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductDAO;
import model.Product;

public class ProductSortingAction implements Action {

	@SuppressWarnings("unchecked")
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession();
		
		
		ArrayList<Product> products = (ArrayList<Product>) session.getAttribute("products");
		
		System.out.println("productSort");
		for(Product v : products) {
			System.out.println(v);
		}
		
		ProductDAO productDAO = new ProductDAO();
		
		String sortBy = req.getParameter("sortBy"); // �젙�젹 湲곗��쓣 �뙆�씪誘명꽣濡� �쟾�떖�빐 諛쏆븘�샂
		req.setAttribute("sortBy", sortBy);
		
		System.out.println("sortBy : "+sortBy);
		
		// view�뿉�꽌 select 諛뺤뒪瑜� �씠�슜�빐�꽌 �젙�젹 湲곗��쓣 �꽑�깮
		// �빐�떦 select 諛뺤뒪�쓽 媛믪쓣 �옄諛붿뒪�겕由쏀듃濡� .do濡� �쟾�떖
		// sortProduct.do?sortBy= + value
		
		if(sortBy.equals("lowPrice")) {
			Collections.sort(products, new Comparator<Product>() {
				@Override
				public int compare(Product o1, Product o2) {
					return o1.getPrice()<o2.getPrice()?-1:(o1.getPrice() == o2.getPrice() ? 0 : 1);
				}
			});
//			products = productDAO.showPorderasc("price");
		} else if (sortBy.equals("highPrice")) {
			Collections.sort(products, new Comparator<Product>() {
				@Override
				public int compare(Product o1, Product o2) {
					return o1.getPrice()>o2.getPrice()?-1:(o1.getPrice() == o2.getPrice() ? 0 : 1);
				}
			});
//			products = productDAO.showPorderde("price");
		} else if (sortBy.equals("popularity")) {
			Collections.sort(products, new Comparator<Product>() {
				@Override
				public int compare(Product o1, Product o2) {
					return o1.getVisit()<o2.getVisit()?-1:(o1.getVisit() == o2.getVisit() ? 0 : 1);
				}
			});
			products = productDAO.showPorderde("visit");
		}

		for(Product v : products) {
			System.out.println(v);
		}
		
		req.setAttribute("products", products);
		
		
		forward.setRedirect(false);
		forward.setPath("shop.jsp");
		
		return forward;
	}

}
