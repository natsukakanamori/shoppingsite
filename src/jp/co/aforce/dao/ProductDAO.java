package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import jp.co.aforce.bean.ProductBean;

public class ProductDAO extends DAO {

	// 必須チェック
		public boolean inputCheck(ProductBean product) {

			if (product.getProductId().isEmpty() || product.getProductName().isEmpty() || product.getPrice() == 0
					|| product.getImage().isEmpty() || product.getCategoryId().isEmpty()) {

				return false;

			}

			return true;
		}

	//追加
	public int insert(ProductBean product) throws Exception {
		Connection con = getConnection();

		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat sdf = new SimpleDateFormat("yyMMddhhmmss");
		String str = sdf.format(timestamp);

		String productId = "A" + str;

		PreparedStatement st = con.prepareStatement(
				"INSERT INTO products VALUES(?,?,?,?,?)");
		st.setString(1, productId);
		st.setString(2, product.getProductName());
		st.setInt(3, product.getPrice());
		st.setString(4, product.getImage());
		st.setString(5, product.getCategoryId());
		int line = st.executeUpdate();

		st.close();
		con.close();
		return line;
	}
	//表示
	public ProductBean search(String productId) throws Exception { //調べて取り出す情報は1つだけだからList化する必要はない
		ProductBean product = new ProductBean(); //beanをインスタンス化

		Connection con = getConnection(); //データベースにつなぐ

		PreparedStatement st = con.prepareStatement( //PeparedStatementクラスのsetStringメソッドで、ブレースホルダを検索文字列に置き換え
				"select * from products where productId like ?");
		st.setString(1, productId); //プレースホルダは１つなので、第一引数は1。入力値（memberNo）をセット
		ResultSet rs = st.executeQuery();
		/*resultSetはselect実行後に各行各列のデータを取得するためのインターフェース
		executeQueryはselect命令を実行するためのメソッド*/

		if (rs.next()) { //ResultSetでカーソルが現在の行を指し示すよう維持し、nextメソッドにより次の行へ移動
			product.setProductId(rs.getString("productId"));
			product.setProductName(rs.getString("productName"));
			product.setPrice(rs.getInt("price"));
			product.setImage(rs.getString("image"));
			product.setCategoryId(rs.getString("categoryId"));
			//beanに取得してきた値を返す

		} else {
			return null; //取得できない場合はnullを返す
		}

		st.close();
		con.close(); //データベース切断

		return product;
	}

	//削除
	public boolean delete(String productId) throws Exception {

		boolean result = false; //初期値設定

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"delete from products where productId = ?"); //入力値にあてはまる会員情報データを削除
		st.setString(1, productId); //プレースホルダは１つなので、第一引数は１．あてはまった会員情報をセット
		int line = st.executeUpdate(); //executeUpdateは削除/更新を実行するメソッド
										//lineに削除したデータを代入

		if (line > 0) { //データの行数があれば（成功したならば）
			result = true;
		}
		st.close();
		con.close();
		return result; //結果を返す（なかった場合はfalseが入っている
	}

	//変更
	public boolean update(ProductBean product) {

		boolean result = false;
		Connection con = null;
		PreparedStatement st = null;

		try {
			con = getConnection();
			st = con.prepareStatement(
					"update products set productName=?,price=?,image=?,categoryId=? WHERE productId=?");

			st.setString(1, product.getProductName());
			st.setInt(2, Integer.valueOf(product.getPrice()));
			st.setString(3, product.getImage());
			st.setString(4, product.getCategoryId());
			st.setString(5, product.getProductId());

			int line = st.executeUpdate();

			if (line > 0) {
				result = true;
			}

			st.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

}
