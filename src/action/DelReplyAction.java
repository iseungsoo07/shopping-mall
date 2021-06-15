package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QnADAO;
import model.QnASet;

public class DelReplyAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();

	

		QnADAO qnaDAO=new QnADAO();
		int qid=Integer.parseInt(req.getParameter("qid"));
		
		
		if(!qnaDAO.delReply(Integer.parseInt(req.getParameter("rid")),qid)) {		// 뷰로부터 rid와 qid를 받아와 댓글 삭제 실행
			System.out.println("댓글삭제 실패");
		}
		
		
		ArrayList<QnASet> datas=qnaDAO.getAll(qid);
		req.setAttribute("datas", datas); // 게시글목록
		
		forward.setRedirect(false);
		forward.setPath("QnAboard_view.jsp");
		return forward;
	}
}
