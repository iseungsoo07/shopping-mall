package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CartDAO;
import model.Cart;


public class AddCartAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		
			ActionForward forward = new ActionForward();

			
			CartDAO cartDAO = new CartDAO();
			Cart c = new Cart();
		
			
			c.setId(req.getParameter("id"));
			c.setPid(Integer.parseInt(req.getParameter("pid")));
			int count =Integer.parseInt(req.getParameter("count"));
			c.setCount(count);
			c.setName(req.getParameter("name"));
			int price = Integer.parseInt(req.getParameter("price"));
			int total = price*count;
			System.out.println(req.getParameter("file"));
			String files = req.getParameter("file").substring(0,req.getParameter("file").length()-1);
			System.out.println(files);
			c.setFiles(files);
			c.setPrice(price);
			c.setTotal(total);
			req.setCharacterEncoding("UTF-8");
			res.setContentType("text/html; charset=UTF-8");
			PrintWriter out = res.getWriter();
			if(!cartDAO.newCart(c)) {
				System.out.println("카트 추가 실패");
			} else {
				out.println("<script>alert('장바구니 등록 완료!');</script>");
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
