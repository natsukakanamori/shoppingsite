package jp.co.aforce.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.ProductBean;
import jp.co.aforce.dao.UserproductDAO;

@WebServlet(urlPatterns= {"/jp.co.aforce.servlets/all"})
public class All extends HttpServlet{
	public void doPost(
			HttpServletRequest request, HttpServletResponse response
		)throws ServletException,IOException{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();

		String jsp = "../views/admin-product.jsp";

		HttpSession session=request.getSession();

		try {
			UserproductDAO dao=new UserproductDAO();
			List<ProductBean>list =dao.search("");

			session.setAttribute("list",list);

			request.getRequestDispatcher(jsp)
			.forward(request, response);

		}catch(Exception e) {
			e.printStackTrace(out);
		}

//			try {
//				InitialContext ic=new InitialContext();
//				DataSource ds=(DataSource)ic.lookup(
//						"java:/comp/env/jdbc/shoppingsite");
//				Connection con=ds.getConnection();
//
//				PreparedStatement st=con.prepareStatement(
//						"select * from products");
//				ResultSet rs=st.executeQuery();
//
//				HttpSession session=request.getSession();
//
//				List<ProductBean>list=new ArrayList<>();
//
//				while(rs.next()) {
//					ProductBean product=new ProductBean();
//					product.setProductId(rs.getString("productId"));
//					product.setProductName(rs.getString("productName"));
//					product.setPrice(rs.getInt("price"));
//					product.setImage(rs.getString("image"));
//					product.setCategoryId(rs.getString("categoryId"));
//					list.add(product);
//				}
//				session.setAttribute("list", list);
//				st.close();
//				con.close();
//			}catch (Exception e) {
//				e.printStackTrace();
//			}
//			request.getRequestDispatcher(jsp)
//			.forward(request, response);
		}

	}

