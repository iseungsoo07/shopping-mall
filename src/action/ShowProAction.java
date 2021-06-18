package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import dto.Product;

public class ShowProAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		ProductDAO proDAO = new ProductDAO();
		Product pro = new Product();  			//NoticeDAO와 Notice 클래스를 이용하기 위해 객체 생성
		

	
		
		
		ArrayList<Product> datas = proDAO.showP();	// 전체 공지사항 출력 후 저장
		req.setAttribute("datas", datas);
		
		forward.setRedirect(false);
		forward.setPath("about.jsp"); 
		
		
		
		return forward;
	}
}
