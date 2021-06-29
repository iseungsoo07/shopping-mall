package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CartDAO;
import dao.MemberDAO;
import dao.ProductDAO;
import model.Cart;
import model.Member;
import model.Product;

public class PaymentAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		req.setCharacterEncoding("UTF-8");
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		HttpSession session = req.getSession();
		CartDAO cartDAO = new CartDAO();
		
		MemberDAO memberDAO = new MemberDAO();
		ProductDAO productDAO = new ProductDAO();
		String id = (String) session.getAttribute("id");
		
		ArrayList<Cart> datas = cartDAO.showC(id);
		
		Member member = memberDAO.getMember(id);
		int curPurchase = member.getPurchase();
		int curPoint = member.getPoint();
		
		
		int purchase = Integer.parseInt(req.getParameter("purchase"));
		int point = (int) Math.round(purchase * 0.005);
		
		memberDAO.updatePointAndPurchase(id, curPoint + point, curPurchase + purchase);
		int rank = member.changeRank();
		
		memberDAO.updateRank(id, rank);
		
		for (Cart cart : datas) {
			int pid = cart.getPid();
			
			Product pro = productDAO.showP(pid);
			
			int ssize = pro.getSsize();
			System.out.println(ssize);
			int msize = pro.getMsize();
			int lsize = pro.getLsize();
			int xlsize = pro.getXlsize();
			int xxlsize = pro.getXxlsize();
			
			if(cart.getPsize().equals("s")) {
				ssize -= cart.getCount();
			} else if (cart.getPsize().equals("m")) {
				msize -= cart.getCount();
				System.out.println(msize);
			} else if (cart.getPsize().equals("l")) {
				lsize -= cart.getCount();
			} else if (cart.getPsize().equals("xl")) {
				xlsize -= cart.getCount();
			}else if (cart.getPsize().equals("xxl")) {
				xxlsize -= cart.getCount();
			}
			
			productDAO.updateStock(pid, ssize, msize, lsize, xlsize, xxlsize);
			
		}
		
		session.removeAttribute("carts");
		
		forward.setPath("payment_ok.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
