package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.ActionForward;
import action.AddProductAction;
import action.CategoryAction;
import action.ChangeInfoAction;
import action.ChangePwAction;
import action.DelNotiAction;
import action.DelProductAction;
import action.DelQnAAction;
import action.DelReplyAction;
import action.DelReviewAction;
import action.DeleteAction;
import action.FindIdAction;
import action.HomeAction;
import action.IdCheckAction;
import action.LoginAction;
import action.LogoutAction;
import action.MyPageAction;
import action.NewNotiAction;
import action.NewPwAction;
import action.NewQnAAction;
import action.NewReplyAction;
import action.PriceFilterAction;
import action.ProductSortingAction;
import action.RegistAction;
import action.SearchNAction;
import action.SearchQAction;
import action.ShowAllProductAction;
import action.ShowNconAction;
import action.ShowNotiAction;
import action.ShowProductDetailAction;
import action.ShowQAction;
import action.ShowQnAconAction;
import action.ShowReviewAction;
import action.UpdateAction;
import action.UpdateReviewAction;
import action.WriteProductReviewAction;

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

		if (command.equals("/home.do")) {
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
		} else if (command.equals("/newnoti.do")) {
			try {
				forward = new NewNotiAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/changeinfo.do")) {
			try {
				forward = new ChangeInfoAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/delete.do")) {
			try {
				forward = new DeleteAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/changepw.do")) {
			try {
				forward = new ChangePwAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/findid.do")) {
			try {
				forward = new FindIdAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/idCheck.do")) {
			try {
				forward = new IdCheckAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/newpw.do")) {
			try {
				forward = new NewPwAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/showN.do")) {
			try {
				forward = new ShowNotiAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/newQnA.do")) {
			try {
				forward = new NewQnAAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/delnoti.do")) {
			try {
				forward = new DelNotiAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/showNcon.do")) {
			try {
				forward = new ShowNconAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/showQ.do")) { // �������� ������ +1 �ǰ�
			try {
				forward = new ShowQAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/showQnAcon.do")) { // �������� ������ +1 �ǰ�
			try {
				forward = new ShowQnAconAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/newReply.do")) {
			try {
				forward = new NewReplyAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/showN.do")) {
			try {
				forward = new ShowNotiAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/newQnA.do")) {
			try {
				forward = new NewQnAAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/delReply.do")) {
			try {
				forward = new DelReplyAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/delQnA.do")) {
			try {
				forward = new DelQnAAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/searchN.do")) {
			try {
				forward = new SearchNAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/searchQ.do")) {
			try {
				forward = new SearchQAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/addProduct.do")) {
			try {
				forward = new AddProductAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/category.do")) {
			try {
				forward = new CategoryAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/delProduct.do")) {
			try {
				forward = new DelProductAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/delReview.do")) {
			try {
				forward = new DelReviewAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/priceFilter.do")) {
			try {
				forward = new PriceFilterAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/productSort.do")) {
			try {
				forward = new ProductSortingAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/showAllProduct.do")) {
			try {
				forward = new ShowAllProductAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/showProductDetail.do")) {
			try {
				forward = new ShowProductDetailAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/showReview.do")) {
			try {
				forward = new ShowReviewAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/updateReview.do")) {
			try {
				forward = new UpdateReviewAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/writeReview.do")) {
			try {
				forward = new WriteProductReviewAction().execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		/*
		 * else if (command.equals("/notiList.do")) { try { forward=new
		 * NotiPagingAction().execute(req, res); }catch(Exception e) {
		 * e.printStackTrace(); } }
		 */

		if (forward != null) {
			if (forward.getRedirect()) {
				res.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, res);
			}
		}
	}

}
