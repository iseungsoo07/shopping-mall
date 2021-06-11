package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dao.QnADAO;
import dto.QnASet;
import dto.Reply;



public class NewReplyAction implements Action{


	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		
			ActionForward forward = new ActionForward();

			String curmsg=req.getParameter("curmsg");
			req.setAttribute("curmsg", curmsg);
			
			QnADAO msgDAO=new QnADAO();
			Reply reply=new Reply();
			reply.setRid(Integer.parseInt(req.getParameter("rid")));
			reply.setQid(Integer.parseInt(req.getParameter("qid")));
			reply.setDay(req.getParameter("day"));
			reply.setRcon(req.getParameter("rcon"));
			reply.setId(req.getParameter("id"));
			
			
			if(!msgDAO.newReply(reply)) {
				System.out.println("댓글 달기 실패");
			}

			

			ArrayList<QnASet> datas=msgDAO.showQ();
			req.setAttribute("datas", datas); // 게시글목록

			
			forward.setRedirect(false);
			forward.setPath("main.jsp");
			return forward;
	}


}