package jp.co.aforce.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.NewProductBean;
import jp.co.aforce.dao.PurchaseDAO;
import tool.Action;

public class PurchaseAction extends Action {
	@SuppressWarnings("unchecked")
	public String execute(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		HttpSession session = request.getSession();

		String jsp = "purchase-out.jsp";
		String userName = request.getParameter("userName");
		String address = request.getParameter("address");
		String button = request.getParameter("button");

		if (button.equals("購入を確定")) {

			if (userName.isEmpty() || address.isEmpty()) {
				request.setAttribute("msg", "名前と住所を正しく入力して下さい.");
				return jsp = "purchase-in.jsp";
			}

			try {
				PurchaseDAO dao = new PurchaseDAO();
				List<NewProductBean> cart = (List<NewProductBean>) session.getAttribute("cart");
				if (cart == null || !dao.insert(cart, userName, address)) {
					return jsp = "purchase-error-insert.jsp";
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			//session.removeAttribute("cart");

		} else if (button.equals("買い物を続ける")) {
			jsp = "new-productList.jsp";
		}

		return jsp;

	}

}
