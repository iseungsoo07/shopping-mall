package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CartDAO;
import model.Cart;

public class DelOrderAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		CartDAO cartDAO = new CartDAO();
		HttpSession session = req.getSession();

		req.setCharacterEncoding("UTF-8");
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();

		// �궘�젣�븷 �긽�뭹�쓽 cid瑜� �뙆�씪誘명꽣濡� 諛쏆븘�샂
		if (cartDAO.delCart(Integer.parseInt(req.getParameter("cid")))) {
			out.println("<script>alert('해당 상품이 삭제되었습니다.'); location.href='장바구니 삭제 페이지'</script>");
		} else {
			out.println("<script>alert(상품 삭제에 실패했습니다.'); location.href='장바구니 삭제 페이지'</script>");
		}

		String id = req.getParameter("id");
		System.out.println(id);
		ArrayList<Cart> datas = cartDAO.showC(id);
		session.setAttribute("carts", datas); // QnA寃뚯떆湲�紐⑸줉怨� �뙎湲� 紐⑸줉�쓣 �븳踰덉뿉 蹂댁뿬以�

		forward.setRedirect(false);
		forward.setPath("payment.jsp");
		return forward;
	}

}
