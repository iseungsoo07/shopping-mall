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
		
		notice.setNid(Integer.parseInt(req.getParameter("nid")));
		notice.setNtitle(req.getParameter("ntitle"));
		notice.setNcon(req.getParameter("ncon"));
		notice.setVisitor(Integer.parseInt(req.getParameter("ntitle")));
		notice.setDay(req.getParameter("day"));
		
		ArrayList<Notice> datas = noticeDAO.getDBList();
		req.setAttribute("datas", datas);
		
	
		forward.setRedirect(true);
		forward.setPath("공지사항 뷰"); //처리해야함
		
		return forward;
	}

}
//getAll은 뷰에서 구현하는것이 낫다고 생각
