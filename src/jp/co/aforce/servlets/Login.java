package jp.co.aforce.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.MemberBean;
import jp.co.aforce.dao.LoginDAO;

@WebServlet(urlPatterns = { "/jp.co.aforce.servlets/login" })
public class Login extends HttpServlet{
	public void doPost(
		HttpServletRequest request, HttpServletResponse response
	) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		//リクエストパラメーターを受け取る
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String jsp = "../views/not-login.jsp";

		HttpSession session = request.getSession();

		MemberBean members = new MemberBean();

		try {
			request.setCharacterEncoding("UTF-8");
			LoginDAO dao = new LoginDAO();
			members = dao.search(id,password);

			if (members != null) {
				session.setAttribute("members", members);
				//jsp = "../views/new-top.jsp";
				session.setAttribute("message",members.getUserName());

				//管理者判定
				if(id.contains("A")) {
					jsp = "../views/admin-menu.jsp";
				}else {
					jsp = "../views/new-top.jsp";
				}

			} else {
				members = new MemberBean();
				members.setMsg("idまたはパスワードが違います.");
				members.setId(id);
				members.setPassword(password);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("members", members);
		request.getRequestDispatcher(jsp)
		.forward(request, response);
	}

}
