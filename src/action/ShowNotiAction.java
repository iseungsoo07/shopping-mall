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
		ActionForward forward = new ActionForward();
		
		NoticeDAO noticeDAO = new NoticeDAO();
		Notice notice = new Notice();  			//NoticeDAO와 Notice 클래스를 이용하기 위해 객체 생성
		

	
		
		
		ArrayList<Notice> datas = noticeDAO.showN();	// 전체 공지사항 출력 후 저장
		req.setAttribute("datas", datas);
		
		forward.setRedirect(false);
		forward.setPath("board.jsp"); 
		
		
		
		return forward;
	}
}
