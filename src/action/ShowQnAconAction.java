package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QnADAO;
import dto.QnA;
import dto.QnASet;

public class ShowQnAconAction implements Action {
@Override
public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	ActionForward forward = new ActionForward();
	// TODO Auto-generated method stub
	QnADAO qnaDAO=new QnADAO();
	
	
	
	int qid=Integer.parseInt(req.getParameter("qid"));
	ArrayList<QnASet> datas=qnaDAO.getAll(qid);
	req.setAttribute("datas", datas);		// 뷰로부터 qid를 받아와 qid에 맞는 QnA와 댓글들을 출력
	
	
	
	forward.setRedirect(false);
	forward.setPath("QnAboard_view.jsp");
	return forward;
}
	
}
