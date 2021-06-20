package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QnADAO;
import dto.QnA;
import dto.QnASet;
import dto.Reply;



public class NewReplyAction implements Action{


	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		ActionForward forward = new ActionForward();


		QnADAO qnaDAO=new QnADAO();
		Reply reply=new Reply();
		System.out.println(req.getParameter("qid")+","+req.getParameter("rcon"));
		if(req.getParameter("rcon")!=null) {
			int qid =Integer.parseInt(req.getParameter("qid"));
			reply.setQid(qid);
			reply.setRcon(req.getParameter("rcon"));				

			System.out.println(req.getParameter("rcon"));
			req.setAttribute("rcon", null);
			if(!qnaDAO.newReply(reply)) {
				System.out.println("댓글 달기 실패");			//qid, rcon을 받아와 newReply를 실행해 댓글을 만들어줌
			}
		}


		ArrayList<QnASet> datas=qnaDAO.getAll(Integer.parseInt(req.getParameter("qid")));
		req.setAttribute("datas", datas); 				// QnA게시글목록과 댓글 목록을 한번에 보여줌


		forward.setRedirect(false);
		forward.setPath("QnAboard_view.jsp");

		return forward;

	}


}