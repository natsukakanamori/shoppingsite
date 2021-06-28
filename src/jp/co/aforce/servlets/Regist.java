package jp.co.aforce.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.bean.ProductBean;
import jp.co.aforce.dao.ProductDAO;

@WebServlet(urlPatterns = { "/jp.co.aforce.servlets/regist" })
public class Regist extends HttpServlet {

	public void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");

		String button = request.getParameter("button");
		String jsp = "../views/newadmin-regist.jsp";

		if (button.equals("REGIST")) {

			try {
				request.setCharacterEncoding("UTF-8");
				String productName = request.getParameter("productName");
				String getPrice = request.getParameter("price");
				String image = request.getParameter("image");
				String categoryId = request.getParameter("categoryId");

				if ((productName.length() != 0)
						&& getPrice != null
						&& (image.length() != 0)
						&& (categoryId.length() != 0)) {

					int price = Integer.parseInt(getPrice);

					ProductBean product = new ProductBean();
					product.setProductName(productName);
					product.setPrice(price);
					product.setImage(image);
					product.setCategoryId(categoryId);

					ProductDAO dao = new ProductDAO();
					int line = dao.insert(product);

					if (line > 0) {
						request.setAttribute("msg", "登録に成功しました.");
					} else {
						request.setAttribute("msg", "登録に失敗しました.");
					}

				} else {
					request.setAttribute("msg", "入力されていない項目があります.");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (button.equals("BACK")) {
			jsp = "../views/newadmin-menu.jsp";
		}
		request.getRequestDispatcher(jsp)
		.forward(request, response);
	}
}
