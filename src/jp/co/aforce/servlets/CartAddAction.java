package jp.co.aforce.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.NewProductBean;
import jp.co.aforce.bean.ProductBean;
import jp.co.aforce.dao.UserproductDAO;
import tool.Action;

public class CartAddAction extends Action {

	@SuppressWarnings("unchecked")
	public String execute(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		HttpSession session = request.getSession();

		String productId = request.getParameter("id");
		String jsp = "cart.jsp";

		//session属性からカート(NewProductBeanのリスト)を取得 nullの場合はカートが未生成のためカートを生成してセッション属性に設定
		List<NewProductBean> cart = (List<NewProductBean>) session.getAttribute("cart");
		if (cart == null) {
			cart = new ArrayList<NewProductBean>();
			session.setAttribute("cart", cart);
		}

		//productIdを使って追加する商品がカートに存在するかを調べる・if以下はカートに存在する場合の処理
		for (NewProductBean i : cart) {
			if (i.getProduct().getProductId() .equals (productId)) {
				i.setCount(i.getCount() + 1);
				return jsp;
			}
		}

		//追加する商品がカートに存在しない場合の処理
		try {

			//DAOをインスタンス化し、探してきた全商品を商品beanのリストに代入
			UserproductDAO dao= new UserproductDAO();
			List<ProductBean> productList =dao.productSearch();

			//セッション属性に設定
			session.setAttribute("productList",productList);

			//セッション属性から商品のリストを取得
			List<ProductBean> list = (List<ProductBean>) session.getAttribute("productList");

			//productIdを利用し、追加する商品を商品リストから探す
			for (ProductBean p : list) {

				//商品が見つかったらNewProductBeanを作成して、そのproductプロパティに商品beanを設定し個数を１に設定してから、カートに追加
				if (p.getProductId() .equals (productId)) {
					NewProductBean i = new NewProductBean();
					i.setProduct(p);
					i.setCount(1);
					cart.add(i);
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return jsp;

	}

}
