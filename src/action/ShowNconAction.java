package action;

import java.io.IOException;


import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NoticeDAO;
import dto.Notice;


public class ShowNconAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		NoticeDAO noticeDAO = new NoticeDAO();
		Notice noti = new Notice();  			//NoticeDAO와 Notice 클래스를 이용하기 위해 객체 생성
		
		int nid=Integer.parseInt(req.getParameter("nid"));
	 // nid에 맞는 
		
		ArrayList<Notice> datas = noticeDAO.show(nid);
		req.setAttribute("datas", datas);		//상세내용을 보여줄 공지사항의 nid를 받아와 실행 후 저장
		
		forward.setRedirect(false);
		forward.setPath("board_view.jsp"); 
		
		
		
		return forward;
	}
}
