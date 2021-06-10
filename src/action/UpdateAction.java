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
	
		// 비밀번호 변경에 대한 안내가 부족
		// 기존의 비밀번호를 그대로 입력했을 때도 정보가 수정되고
		// 새로운 비밀번호를 입력했을 때도 정보가 수정된다.
		// 이 과정에 대한 보완이 필요할 듯
		
		member.setPw(req.getParameter("pw"));
		member.setName(req.getParameter("name"));
		member.setPhone(req.getParameter("phone"));
		member.setEmail(req.getParameter("email1") + "@" + req.getParameter("email2"));
		member.setZipcode(Integer.parseInt(req.getParameter("zipcode")));
		member.setAddr(req.getParameter("addr") + " / " + req.getParameter("detailAddr") + " / "
				+ req.getParameter("referAddr"));

		memberDAO.update(member);
		
		session.setAttribute("member", member);
		 
		// 마이페이지에서 정보 수정 후 아이디, 등급, 포인트 값이 넘어오질 않음
		// 수정 필요
		
		forward.setRedirect(false);
		forward.setPath("mypage.jsp");

		return forward;
	}
}
