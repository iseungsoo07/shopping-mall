package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import model.Member;

public class UpdateAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		MemberDAO memberDAO = new MemberDAO();
		HttpSession session = req.getSession();
		Member member = new Member();
	

		// ��й�ȣ ���濡 ���� �ȳ��� ����
		// ������ ��й�ȣ�� �״�� �Է����� ���� ������ �����ǰ�
		// ���ο� ��й�ȣ�� �Է����� ���� ������ �����ȴ�.
		// �� ������ ���� ������ �ʿ��� ��
		
		member.setPw(req.getParameter("pw"));
		member.setName(req.getParameter("name"));
		member.setPhone(req.getParameter("phone"));
		member.setEmail(req.getParameter("email1") + "@" + req.getParameter("email2"));
		member.setZipcode(Integer.parseInt(req.getParameter("zipcode")));
		member.setAddr(req.getParameter("addr") + " / " + req.getParameter("detailAddr") + " / "
				+ req.getParameter("referAddr"));

		memberDAO.update(member);
		
		session.setAttribute("member", member);
		 
		// �������������� ���� ���� �� ���̵�, ���, ����Ʈ ���� �Ѿ���� ����
		// ���� �ʿ�
		
		forward.setRedirect(false);
		forward.setPath("mypage.jsp");

		return forward;
	}
}
