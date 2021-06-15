package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NoticeDAO;
import model.Notice;

public class DelNotiAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		NoticeDAO noticeDAO = new NoticeDAO();
		Notice notice = new Notice();							//NoticeDAO와 Notice의 정보를 이용하기 위해객체 생성
		
		int nid=Integer.parseInt(req.getParameter("nid"));		//뷰로부터 nid의 정보를 받아와 인트형으로 저장
		if(!noticeDAO.delNotice(Integer.parseInt(req.getParameter("nid")))) {
			System.out.println("공지사항 삭제 실패");					// 뷰로부터 받아온 nid를 이용해 공지사항 글 삭제, 실패시 실패 메세지 출력
		}														
		
		
		
		ArrayList<Notice> datas = noticeDAO.showN();			// 뷰에 공지사항 삭제 실행후 남은 공지사항들 출력한 결과를 배열로 저장		
		req.setAttribute("datas", datas);						// 저장된 배열을 보낼준비
		forward.setRedirect(false);
		forward.setPath("board.jsp"); 							// 보낼 뷰를 지정
		
		return forward;
	}

}
	
