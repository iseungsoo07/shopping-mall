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
		
		String sortBy = req.getParameter("sortBy"); // �젙�젹 湲곗��쓣 �뙆�씪誘명꽣濡� �쟾�떖�빐 諛쏆븘�샂
		
		System.out.println("sortBy : "+sortBy);
		
		// view�뿉�꽌 select 諛뺤뒪瑜� �씠�슜�빐�꽌 �젙�젹 湲곗��쓣 �꽑�깮
		// �빐�떦 select 諛뺤뒪�쓽 媛믪쓣 �옄諛붿뒪�겕由쏀듃濡� .do濡� �쟾�떖
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
