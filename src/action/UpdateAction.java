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

/*<<<<<<< HEAD
		// �뜝�룞�삕艅섇뜝�떕占� �뜝�룞�삕�뜝�뜽�뿉 �뜝�룞�삕�뜝�룞�삕 �뜝�떕�냲�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕
		// �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕艅섇뜝�떕節륁삕�뜝占� �뜝�뙎�뙋�삕�뜝占� �뜝�뙃琉꾩삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�떎怨ㅼ삕
		// �뜝�룞�삕�뜝�떥�슱�삕 �뜝�룞�삕艅섇뜝�떕節륁삕�뜝占� �뜝�뙃琉꾩삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�떕�뙋�삕.
		// �뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�떗�슱�삕�뜝�룞�삕 �뜝�룞�삕
=======
>>>>>>> 48c0fe68fb9cdfffbe4235cfb50e67285e43d45d*/
		
		member.setId(req.getParameter("id"));
		member.setPw(req.getParameter("pw"));
		member.setName(req.getParameter("name"));
		member.setPhone(req.getParameter("phone"));
		member.setEmail(req.getParameter("email1") + "@" + req.getParameter("email2"));
		member.setZipcode(Integer.parseInt(req.getParameter("zipcode")));
		member.setAddr(req.getParameter("addr") + " / " + req.getParameter("detailAddr") + " / "
				+ req.getParameter("referAddr"));
/*<<<<<<< HEAD*/
		member.setRank(Integer.parseInt(req.getParameter("rank")));
		member.setPoint(Integer.parseInt(req.getParameter("point")));
		if (req.getParameter("parchase") != null) { //  구현이 아직 안되어서 null로 나오는거 같아서 일단 if문 걸어둠
			member.setPurchase(Integer.parseInt(req.getParameter("parchase")));
		}
		memberDAO.update(member);

		session.setAttribute("member", member);

		// �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕 �뜝�룞�삕�뜝�떛�벝�삕, �뜝�룞�삕�뜝占�, �뜝�룞�삕�뜝�룞�삕�듃 �뜝�룞�삕�뜝�룞�삕
		// �뜝�떬�뼲�삕�뜝�룞�삕�뜝占� �뜝�룞�삕�뜝�룞�삕
		// �뜝�룞�삕�뜝�룞�삕 �뜝�떗�슱�삕

		forward.setRedirect(false);
		forward.setPath("mypage.jsp");
//=======

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
//>>>>>>> 48c0fe68fb9cdfffbe4235cfb50e67285e43d45d

		return forward;
	}
}
