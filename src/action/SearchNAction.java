package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NoticeDAO;
import dto.Notice;
import dto.QnA;

public class SearchNAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();

		NoticeDAO notiDAO = new NoticeDAO();
		Notice noti = new Notice();

		String s = req.getParameter("value");
		String search = req.getParameter("s");						//뷰로부터 select로 제목을 검색할건지 내용을 검색할건지 정보를 받아옴
		System.out.println(search);
		System.out.println(s);
		
		// 받아온 정보를 가지고 제목이면 searchNtitle 내용이면 searchNcon 실행
		if(s.equals("title")) {
			ArrayList<Notice> datas = notiDAO.searchNtitle(search);
			req.setAttribute("datas", datas);

		} else {
			ArrayList<Notice> datas = notiDAO.searchNcon(search);
			req.setAttribute("datas", datas);
		}

		

		forward.setRedirect(false);
		forward.setPath("board.jsp"); 
		
		return forward;
	}
}
