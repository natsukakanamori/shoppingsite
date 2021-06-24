package jp.co.aforce.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.NewProductBean;
import tool.Action;

public class CartRemoveAction extends Action{
	@SuppressWarnings("unchecked")
	public String execute(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		HttpSession session = request.getSession();

		String productId = request.getParameter("id");
		String jsp = "cart.jsp";

		List<NewProductBean>cart=(List<NewProductBean>)session.getAttribute("cart");

		for(NewProductBean i :cart) {
			if(i.getProduct().getProductId().equals(productId)) {
				cart.remove(i);
				break;
			}
		}
		session.setAttribute("cart", cart);
		return jsp;
	}


}
