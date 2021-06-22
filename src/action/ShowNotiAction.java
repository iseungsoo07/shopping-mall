package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NoticeDAO;
import model.Notice;


public class ShowNotiAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ArrayList<Notice> datas = null;
		ActionForward forward = new ActionForward();
		NoticeDAO noticeDAO = new NoticeDAO();
		
		int page = 1; // 현재 페이지를 저장할 변수
		int itemsInAPage = 10; // 한 페이지에 몇 개를 보여줄건지
		int totalPage = (int) Math.ceil((double)noticeDAO.getTotalNotiCount() / itemsInAPage);	// 전체 페이지 개수 -> 전체 게시글 / 보여줄 게시글 수 올림
		
		if(req.getParameter("page") != null && req.getParameter("page").length() != 0) {
			try {
				page = Integer.parseInt(req.getParameter("page")); // 현재 페이지에 대한 정보를 파라미터로 받아옴
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
		}
		
		int limitFrom = (page - 1) * itemsInAPage; // 몇 번 게시글 부터 보여줄지 시작점 저장
		req.setAttribute("totalPage", totalPage); // 전체 페이지 수 
		req.setAttribute("curPage", page); // 현재 페이지 번호
		
		datas = noticeDAO.showN(limitFrom, page * itemsInAPage);	// 전체 공지사항 출력 후 저장
		// limit을 사용하면 limit 0,5 limit 5,5... 이지만
		// ROWNUM은 0,5 5,10, 10,15... 이렇게 올라가야 하므로 위와 같은 파라미터 전달
		req.setAttribute("datas", datas);
		
		forward.setRedirect(false);
		forward.setPath("board.jsp"); 
		
		return forward;
	}
}
