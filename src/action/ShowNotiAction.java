package action;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NoticeDAO;
import dto.Notice;


public class ShowNotiAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		NoticeDAO noticeDAO = new NoticeDAO();
		Notice notice = new Notice();  			//NoticeDAO와 Notice 클래스를 이용하기 위해 객체 생성
		

		noticeDAO.showN(3); // nid에 맞는 
		
		
		ArrayList<Notice> datas = noticeDAO.getDBList();
		req.setAttribute("datas", datas);
		
		forward.setRedirect(true);
		forward.setPath("board.jsp"); //QnA뷰에 넣어줌
		
		return forward;
	}
}
