package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import model.Product;

public class AddProductAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ProductDAO productDAO = new ProductDAO();
		Product product = new Product();
		
		// 상품 등록페이지에서 테이블에 들어갈 내용을 입력받아 파라미터로 전달
		
		product.setName(req.getParameter("name"));
		product.setStock(Integer.parseInt(req.getParameter("stock")));
		product.setPrice(Integer.parseInt(req.getParameter("name")));
		product.setFiles(req.getParameter("files"));
		product.setVisit(Integer.parseInt(req.getParameter("visit")));
		product.setCate(req.getParameter("cate"));
		product.setPsize(req.getParameter("psize"));
		product.setPcon(req.getParameter("pcon"));
		product.setGender(req.getParameter("gender"));
		
		req.setCharacterEncoding("UTF-8");
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		
		if(productDAO.newPro(product)) {
			// 관리자가 상품추가하기 버튼을 눌렀던 화면으로 이동
			out.println("<script>alert('상품이 등록되었습니다'); location.href='관리자상품 추가 페이지'</script>");
		} else {
			out.println("<script>alert('상품등록에 실패하였습니다.'); location.href='관리자상품 추가 페이지'</script>");
		}

		return null;
	}

}
