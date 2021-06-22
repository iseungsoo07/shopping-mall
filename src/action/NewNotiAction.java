package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NoticeDAO;
import model.Notice;



public class NewNotiAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		NoticeDAO noticeDAO = new NoticeDAO();
		Notice notice = new Notice();
		
		
		notice.setNtitle(req.getParameter("ntitle"));
		notice.setNcon(req.getParameter("ncon"));			
		
	 							
		if(!noticeDAO.newNotice(notice)) { 						//noticaDAO클래스에 있는 newNotice 메소드 실행후 실행에 실패했을경우
			System.out.println("공지사항 작성 실패");
		}
		
		int page = 1;
		int itemsInAPage = 10;
		int totalPage = (int) Math.ceil((double)noticeDAO.getTotalNotiCount() / itemsInAPage);	// 전체 페이지 개수 -> 전체 게시글 / 보여줄 게시글 수 올림
		
		if(req.getParameter("page") != null && req.getParameter("page").length() != 0) {
			try {
				page = Integer.parseInt(req.getParameter("page"));
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
		}
		
		int limitFrom = (page - 1) * itemsInAPage;
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("curPage", page);
		
		ArrayList<Notice> datas = noticeDAO.showN(limitFrom, page * itemsInAPage);					
		req.setAttribute("datas", datas);						//datas에 noticeDB에 있는 정보들을 배열로 저장하고 넘겨줌
		
	
		forward.setRedirect(false);
		forward.setPath("board.jsp"); 						
		
		return forward;
	}

}
