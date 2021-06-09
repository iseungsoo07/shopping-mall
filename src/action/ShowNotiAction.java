package action;

import java.io.IOException;

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
		Notice notice = new Notice();
		

		noticeDAO.showN(Integer.parseInt(req.getParameter("nid")));
		
		
		
		forward.setRedirect(true);
		forward.setPath("공지사항 뷰"); //처리해야함
		
		return forward;
	}
}
