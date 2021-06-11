package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dao.QnADAO;
import dto.QnASet;

public class DelReplyAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();


		
		
		

		QnADAO qnaDAO=new QnADAO();

		if(!qnaDAO.delReply(Integer.parseInt(req.getParameter("rid")))) {
			System.out.println("댓글삭제 실패");
		}

		ArrayList<QnASet> datas=qnaDAO.showQ();
		req.setAttribute("datas", datas); // 게시글목록

		
		forward.setRedirect(false);
		forward.setPath("main.jsp");
		return forward;
	}
}
