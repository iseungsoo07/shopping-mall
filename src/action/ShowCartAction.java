package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CartDAO;
import dao.ProductDAO;
import model.Cart;
import model.Product;

public class ShowCartAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession();
		CartDAO cartDAO = new CartDAO();
		ArrayList<Cart> carts = new ArrayList<>();

		String id = (String) session.getAttribute("id");
		System.out.println("id : " + id);

		if (id == null) { // if no login
			req.setCharacterEncoding("UTF-8");
			res.setContentType("text/html; charset=UTF-8");
			PrintWriter out = res.getWriter();

			out.println("<script>alert('You need Login'); location.href='home.jsp'; </script>");
		} else { // if login
			carts = cartDAO.showC(id);

			session.setAttribute("carts", carts);

			forward.setRedirect(false);
			forward.setPath("cart.jsp");
		}

		return forward;
	}

}
