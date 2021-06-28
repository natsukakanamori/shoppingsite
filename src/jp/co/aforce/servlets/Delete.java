package jp.co.aforce.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.bean.ProductBean;
import jp.co.aforce.dao.ProductDAO;

@WebServlet(urlPatterns = { "/jp.co.aforce.servlets/delete" })
public class Delete extends HttpServlet {
	public void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");

		String button = request.getParameter("button"); //jspのボタンを取得
		String jsp = "../views/newadmin-delete.jsp";
		String productId = request.getParameter("productId");

		if (button.equals("View")) {
			try {
				request.setCharacterEncoding("UTF-8");
				ProductDAO dao = new ProductDAO(); //daoをインスタンス化
				ProductBean product = dao.search(productId); //daoでsearchしてきた会員情報をmembersに代入

				if (product != null) { //nullじゃないということはあてはまる情報が見つけられたということ
					request.setAttribute("product", product);
				} else {
					request.setAttribute("msg", "該当する情報が見つかりません.");
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (button.equals("Back")) {
			jsp = "../views/newadmin-menu.jsp";

		} else if (button.equals("Delete")) {
			ProductDAO dao = new ProductDAO(); //daoをインスタンス化

			try {
				if (dao.delete(productId)) { //削除できたら
					System.out.println(dao.delete(productId));
					request.setAttribute("msg", "削除に成功しました."); //${msg}に第2引数の値をセット
				} else {
					request.setAttribute("msg", "削除に失敗しました.");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		request.getRequestDispatcher(jsp)
				.forward(request, response); //フォワード

	}

}
