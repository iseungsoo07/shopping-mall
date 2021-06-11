package action;


import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QnADAO;
import dto.QnA;
import dto.QnASet;

public class NewQnAAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();

		QnADAO qnaDAO = new QnADAO();
		QnA qna = new QnA();

		
		qna.setQid(Integer.parseInt(req.getParameter("qid")));
		qna.setId(req.getParameter("id"));
		qna.setQcon(req.getParameter("qcon"));
		qna.setQstate(req.getParameter("qstate"));
		qna.setDay(req.getParameter("day"));
		qna.setSort(req.getParameter("sort"));
		
		if(!qnaDAO.newQnA(qna)) {
			System.out.println("문의글 작성 실패");
		}

		ArrayList<QnASet> datas = qnaDAO.showQ();
		req.setAttribute("datas", datas);


		forward.setRedirect(true);
		forward.setPath("공지사항 뷰"); //처리해야함

		return forward;
	}
}
