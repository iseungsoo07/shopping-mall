package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QnADAO;
import model.QnA;

public class SearchQAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();

		QnADAO qnaDAO = new QnADAO();
		QnA qna = new QnA();
		//뷰로부터 제목, 내용 둘중 어떤 정보를 검색할건지 받아옴
		String s = req.getParameter("value");
		String search = req.getParameter("s");
		System.out.println(search);
		System.out.println(s);
		
		// 제목이면 searchQtitle 내용이면 searchQcon을 실행 후 결과 저장
		if(s.equals("title")) {
			ArrayList<QnA> datas = qnaDAO.searchQtitle(search);
			req.setAttribute("datas", datas);

		} else {
			ArrayList<QnA> datas = qnaDAO.searchQcon(search);
			req.setAttribute("datas", datas);
		}

		

		forward.setRedirect(false);
		forward.setPath("QnAboard.jsp"); //처리해야함

		return forward;
	}
}