package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QnADAO;
import dto.QnA;
import dto.QnASet;

public class DelQnAAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		QnADAO qnaDAO = new QnADAO();
		QnA qna = new QnA();
		

		if(!qnaDAO.delQnA(Integer.parseInt(req.getParameter("qid")))) {
			System.out.println("질문글 삭제 실패");
		}
		
		ArrayList<QnASet> datas = qnaDAO.showQ();
		req.setAttribute("datas", datas);
		
		forward.setRedirect(true);
		forward.setPath("공지사항.jsp"); //ó���ؾ���
		
		return forward;
	}

}
	
