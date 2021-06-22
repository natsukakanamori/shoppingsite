package jp.co.aforce.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.ProductBean;
import jp.co.aforce.dao.UserproductDAO;

@WebServlet(urlPatterns = { "/jp.co.aforce.servlets/search" })
public class Search extends HttpServlet {

	public void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String keyword = request.getParameter("keyword");
		String jsp = "../views/search-error.jsp";

		HttpSession session = request.getSession();

		try {
			request.setCharacterEncoding("UTF-8");
			UserproductDAO dao = new UserproductDAO();
			List<ProductBean> list = dao.search(keyword);

			if (list != null) {
				session.setAttribute("list", list);
				jsp = "../views/search-success.jsp";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher(jsp)
				.forward(request, response);
	}

}
