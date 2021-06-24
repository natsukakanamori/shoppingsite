package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jp.co.aforce.bean.ProductBean;

public class UserproductDAO extends DAO {
	//商品検索
	public List<ProductBean> search(String keyword) throws Exception {
		List<ProductBean> list = new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"select * from products where productName like ?");
		st.setString(1, "%" + keyword + "%");
		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			ProductBean product = new ProductBean();
			product.setProductId(rs.getString("productId"));
			product.setProductName(rs.getString("productName"));
			product.setPrice(rs.getInt("price"));
			product.setImage(rs.getString("image"));
			product.setCategoryId(rs.getString("categoryId"));
			list.add(product);
		}

		st.close();
		con.close();

		return list;
	}

	public List<ProductBean> productSearch() throws Exception {
		List<ProductBean> list = new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"select * from products");
		ResultSet rs = st.executeQuery();

		while(rs.next()){
			ProductBean product = new ProductBean();
			product.setProductId(rs.getString("productId"));
			product.setProductName(rs.getString("productName"));
			product.setPrice(rs.getInt("price"));
			product.setImage(rs.getString("image"));
			product.setCategoryId(rs.getString("categoryId"));
			list.add(product);
		}
		st.close();
		con.close();
		return list;
	}

}
