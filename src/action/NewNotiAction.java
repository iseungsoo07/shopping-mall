package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NoticeDAO;
import dto.Notice;



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
		
		ArrayList<Notice> datas = noticeDAO.showN();					
		req.setAttribute("datas", datas);						//datas에 noticeDB에 있는 정보들을 배열로 저장하고 넘겨줌
		
	
		forward.setRedirect(false);
		forward.setPath("board.jsp"); 						
		
		return forward;
	}

}
