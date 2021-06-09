package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.ActionForward;
import action.HomeAction;
import action.LoginAction;
import action.LogoutAction;
import action.MyPageAction;
import action.RegistAction;
import action.UpdateAction;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FrontController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		actionDo(req, res);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(req, res);
	}

	private void actionDo(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String uri = req.getRequestURI();
		
		String conPath = req.getContextPath();
		
		String command = uri.substring(conPath.length());
		System.out.println(command);
		
		ActionForward forward = null;
		
		if(command.equals("/home.do")) {
			try {
				forward = new HomeAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/regist.do")) {
			try {
				forward = new RegistAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/login.do")) {
			try {
				forward = new LoginAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/logout.do")) {
			try {
				forward = new LogoutAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/mypage.do")) {
			try {
				forward = new MyPageAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/update.do")) {
			try {
				forward = new UpdateAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("공지사항 작성")) { 
			try {
				//forward=new UpdateAction().execute(req, res);
			}catch(Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("QnA작성")) {
			try {
				//forward=new UpdateAction().execute(req, res);
			}catch(Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("공지사항삭제")) {
			try {
				//forward=new UpdateAction().execute(req, res);
			}catch(Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("QnA삭제")) {
			try {
				//forward=new UpdateAction().execute(req, res);
			}catch(Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("조회수")) { //페이지에 들어오면 +1 되게
			try {
				//forward=new UpdateAction().execute(req, res);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
		if(forward != null) {
			if(forward.getRedirect()) {
				res.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, res);
			}
		}
	}

}
