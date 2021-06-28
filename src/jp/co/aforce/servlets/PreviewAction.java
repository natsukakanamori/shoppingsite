package jp.co.aforce.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.NewProductBean;
import tool.Action;

public class PreviewAction extends Action {
	@SuppressWarnings("unchecked")
	public String execute(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String jsp = "purchase-in.jsp";
		String button = request.getParameter("button");

		if (button.equals("購入する")) {

			HttpSession session = request.getSession();

			List<NewProductBean> cart = (List<NewProductBean>) session.getAttribute("cart");
			if (cart == null || cart.size() == 0) {
				return jsp = "preview-error-cart.jsp";
			}

		} else if(button.equals("買い物を続ける")){
			jsp="new-productList.jsp";
		}

		return jsp;
	}
}
