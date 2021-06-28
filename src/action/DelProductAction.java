package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductDAO;
import model.Product;

public class DelProductAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		ActionForward forward = new ActionForward();
		ProductDAO productDAO = new ProductDAO();
		
		req.setCharacterEncoding("UTF-8");
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();

		// 삭제할 상품의 pid를 파라미터로 받아옴
		if(productDAO.delPro(Integer.parseInt(req.getParameter("pid")))) {
			out.println("<script>alert('해당 상품이 삭제되었습니다.'); location.href='관리자상품 삭제 페이지'</script>");
		} else {
			out.println("<script>alert('상품 삭제에 실패했습니다.'); location.href='관리자상품 삭제 페이지'</script>");
		}
		HttpSession session = req.getSession();
		
		
	
		ArrayList<Product> products = new ArrayList<>();
		
		
		products = productDAO.showP(); // 전체 상품 가져오기
		
		session.setAttribute("products", products);
		
		forward.setRedirect(false);
		forward.setPath("shop.jsp");
		
		return forward;
	}

}
