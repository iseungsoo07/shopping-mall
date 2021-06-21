package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import model.Member;

public class UpdateAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = null;
		MemberDAO memberDAO = new MemberDAO();
		HttpSession session = req.getSession();
		Member member = new Member();

<<<<<<< HEAD
		// 占쏙옙橘占싫� 占쏙옙占썸에 占쏙옙占쏙옙 占싫놂옙占쏙옙 占쏙옙占쏙옙
		// 占쏙옙占쏙옙占쏙옙 占쏙옙橘占싫ｏ옙占� 占쌓댐옙占� 占쌉뤄옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占실곤옙
		// 占쏙옙占싸울옙 占쏙옙橘占싫ｏ옙占� 占쌉뤄옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占싫댐옙.
		// 占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占십울옙占쏙옙 占쏙옙
=======
>>>>>>> 48c0fe68fb9cdfffbe4235cfb50e67285e43d45d
		member.setId(req.getParameter("id"));
		member.setPw(req.getParameter("pw"));
		member.setName(req.getParameter("name"));
		member.setPhone(req.getParameter("phone"));
		member.setEmail(req.getParameter("email1") + "@" + req.getParameter("email2"));
		member.setZipcode(Integer.parseInt(req.getParameter("zipcode")));
		member.setAddr(req.getParameter("addr") + " / " + req.getParameter("detailAddr") + " / "
				+ req.getParameter("referAddr"));
<<<<<<< HEAD
		member.setRank(Integer.parseInt(req.getParameter("rank")));
		member.setPoint(Integer.parseInt(req.getParameter("point")));
		if (req.getParameter("parchase") != null) { // 구현이 아직 안되어서 null로 나오는거 같아서 일단 if문 걸어둠
			member.setPurchase(Integer.parseInt(req.getParameter("parchase")));
		}
		memberDAO.update(member);

		session.setAttribute("member", member);

		// 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙 占쏙옙占싱듸옙, 占쏙옙占�, 占쏙옙占쏙옙트 占쏙옙占쏙옙
		// 占싼억옙占쏙옙占� 占쏙옙占쏙옙
		// 占쏙옙占쏙옙 占십울옙

		forward.setRedirect(false);
		forward.setPath("mypage.jsp");
=======

		member.setRank(Integer.parseInt(req.getParameter("rank")));
		member.setPoint(Integer.parseInt(req.getParameter("point")));

		String checkPw = req.getParameter("checkPw");

		if (member.getPw().equals(checkPw)) {

			memberDAO.update(member);

			session.setAttribute("member", member);
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("mypage.jsp");

		} else {
			req.setCharacterEncoding("UTF-8");
			res.setContentType("text/html; charset=UTF-8");
			PrintWriter out = res.getWriter();

			out.println("<script>alert('비밀번호와 비밀번호 확인의 값이 다릅니다.'); location.href='change-info.jsp'; </script>");
		}
>>>>>>> 48c0fe68fb9cdfffbe4235cfb50e67285e43d45d

		return forward;
	}
}
