package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NoticeDAO;
import dto.Notice;

public class DelNotiAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		
		NoticeDAO noticeDAO = new NoticeDAO();
		Notice notice = new Notice();
		

		noticeDAO.delNotice(Integer.parseInt(req.getParameter("nid")));
		
		ArrayList<Notice> datas = noticeDAO.getDBList();
		req.setAttribute("datas", datas);
		
		forward.setRedirect(true);
		forward.setPath("�������� ��"); //ó���ؾ���
		
		return forward;
	}

}
//ActionForward forward=new ActionForward();
//
//TestDAO testDAO=new TestDAO(); // control.jsp�� 4�����ο���
//
//testDAO.deleteDB(Integer.parseInt(req.getParameter("id")));
//
//ArrayList<TestBean> datas=testDAO.getDBList();
//req.setAttribute("datas", datas);
//
//forward.setRedirect(false);
//forward.setPath("list.jsp");		
//
//return forward;