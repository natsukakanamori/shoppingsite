package jp.co.aforce.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = { "/jp.co.aforce.servlets/logout" })
public class Logout extends HttpServlet {
	public void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



		String jsp = "../views/logout-error.jsp";


			HttpSession session = request.getSession();

			if (session.getAttribute("members") != null) {
				session.removeAttribute("members");
				jsp = "../views/logout-success.jsp";

			}

			request.getRequestDispatcher(jsp)
					.forward(request, response);

	}

}
