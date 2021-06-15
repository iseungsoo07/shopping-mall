package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QnADAO;
import dto.QnA;

public class DelQnAAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		QnADAO qnaDAO = new QnADAO();	
		QnA qna = new QnA();
			

		if(!qnaDAO.delQnA(Integer.parseInt(req.getParameter("qid")))) {		// 뷰로부터 qid를 인트형으로 변환해 받아와서 질문글 삭제메소드 실행
			System.out.println("질문글 삭제 실패");
		}
		
		ArrayList<QnA> datas = qnaDAO.showQ();
		req.setAttribute("datas", datas);
		
		forward.setRedirect(false);
		forward.setPath("QnAboard.jsp"); 
		
		return forward;
	}

}
	
