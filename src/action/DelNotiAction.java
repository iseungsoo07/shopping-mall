package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NoticeDAO;
import dto.Notice;

public class DelNotiAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		NoticeDAO noticeDAO = new NoticeDAO();
		Notice notice = new Notice();
		

		if(!noticeDAO.delNotice(Integer.parseInt(req.getParameter("nid")))) {
			System.out.println("공지사항 삭제 실패");
		}
		
		ArrayList<Notice> datas = noticeDAO.getDBList();
		req.setAttribute("datas", datas);
		
		forward.setRedirect(true);
		forward.setPath("공지사항.jsp"); //ó���ؾ���
		
		return forward;
	}

}
	
