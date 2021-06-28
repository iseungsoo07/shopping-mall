package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CartDAO;
import model.Cart;

public class DelCartAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		ActionForward forward = new ActionForward();
		CartDAO cartDAO = new CartDAO();
		
		req.setCharacterEncoding("UTF-8");
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();

		// 삭제할 상품의 cid를 파라미터로 받아옴
		if(cartDAO.delCart(Integer.parseInt(req.getParameter("cid")))) {
			out.println("<script>alert('해당 상품이 삭제되었습니다.'); location.href='장바구니 삭제 페이지'</script>");
		} else {
			out.println("<script>alert('상품 삭제에 실패했습니다.'); location.href='장바구니 삭제 페이지'</script>");
		}
		
		
		
		String id = req.getParameter("id");
		System.out.println(id);
		ArrayList<Cart> datas=cartDAO.showC(req.getParameter("id"));
		req.setAttribute("datas", datas); 				// QnA게시글목록과 댓글 목록을 한번에 보여줌

		
		forward.setRedirect(false);
		forward.setPath("cart.jsp");
		return forward;
	}

}
