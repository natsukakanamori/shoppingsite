package jp.co.aforce.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.bean.ProductBean;
import jp.co.aforce.dao.ProductDAO;

@WebServlet(urlPatterns = { "/jp.co.aforce.servlets/update" })
public class Update extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		request.setCharacterEncoding("UTF-8");

		// 遷移先画面の設定
		String jsp = "../views/admin-update.jsp";

		// 会員番号の取得
		String productId = request.getParameter("productId");

		// ボタンを取得
		String button = request.getParameter("button");

		// 押されたボタンがViewだった時
		if (button.equals("View")) {
			try {
				ProductDAO productDao = new ProductDAO();
				ProductBean product = new ProductBean();

				product = productDao.search(productId);

				if (product == null) {
					// エラーメッセージを設定
					product = new ProductBean();
					request.setAttribute("msg", "該当する情報が見つかりません.");
				}

				request.setAttribute("product", product);

			} catch (Exception e) {
				e.printStackTrace();

			}

		} else if (button.equals("Back")) {

			jsp = "../views/newadmin-menu.jsp";

		} else if (button.equals("Update")) {
			// ユーザによって入力された情報を memberBean に格納する
			ProductBean product = new ProductBean();
			product.setProductId(productId);
			product.setProductName(request.getParameter("productName"));
			product.setPrice(Integer.valueOf(request.getParameter("price")));
			product.setImage(request.getParameter("image"));
			product.setCategoryId(request.getParameter("categoryId"));

			ProductDAO productDao = new ProductDAO();

			// 変更処理を実行
			if (productDao.update(product)) {

				request.setAttribute("msg", "変更に成功しました.");
				request.setAttribute("product", product);

			} else {

				request.setAttribute("msg", "変更に失敗しました.");
				request.setAttribute("product", product);

			}
		}

		// 遷移先画面に遷移する
		request.getRequestDispatcher(jsp).forward(request, response);
	}

}
