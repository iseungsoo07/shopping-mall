package action;


import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QnADAO;
import model.QnA;

public class NewQnAAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();

		QnADAO qnaDAO = new QnADAO();
		QnA qna = new QnA();				//QnADAO와 QnA의 정보를 이용하기위해 객체 생성

		
		qna.setQtitle(req.getParameter("qtitle"));
		qna.setQcon(req.getParameter("qcon"));				
		qna.setSort(req.getParameter("value"));
		qna.setId(req.getParameter("id")); 		// 뷰로부터 제목,내용,분류, id를 받아옴
		
		if(!qnaDAO.newQnA(qna)) {
			System.out.println("문의글 작성 실패"); 	//QnADAO의 newQnA메소드 실행 실패시 실패 메세지작성
		}									

		ArrayList<QnA> datas = qnaDAO.showQ();
		req.setAttribute("datas", datas); 	// showQ실행결과 정보들을 받아 datas에 저장하고 보낼준비


		forward.setRedirect(false);
		forward.setPath("QnAboard.jsp"); // 처리한 정보들을 전달

		return forward;
	}
}
