package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QnADAO;
import model.QnA;


public class ShowQAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		QnADAO qnaDAO = new QnADAO();
		QnA qna = new QnA();  			//NoticeDAO와 Notice 클래스를 이용하기 위해 객체 생성
		

	 // nid에 맞는 
		
		
		ArrayList<QnA> datas = qnaDAO.showQ();
		req.setAttribute("datas", datas);	//전체 QnA 내용을 받아와 저장
		
		forward.setRedirect(false);
		forward.setPath("QnAboard.jsp"); 
		
		
		
		return forward;
	}
}
