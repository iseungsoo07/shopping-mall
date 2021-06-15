package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NoticeDAO;
import dto.Notice;
import dto.Paging;



/*public class NotiPagingAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();

		NoticeDAO notiDAO = new NoticeDAO();

		int page = 1;

		if(req.getParameter("page")!=null){
			page = Integer.parseInt(req.getParameter("page"));
		}
		Paging paging = new Paging();
		paging.setPage(page);
		int count = notiDAO.getAllCount();

	
		paging.setTotalCount(count);
		paging.setPage(page);
		ArrayList<Notice> datas1 = notiDAO.selectAllMember(paging);
		req.setAttribute("memList", datas1);
		req.setAttribute("paging", paging);
		
		
		forward.setRedirect(false);
		forward.setPath("board.jsp");
		return forward;




	}
}
*/
