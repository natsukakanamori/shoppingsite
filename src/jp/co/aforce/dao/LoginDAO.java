package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jp.co.aforce.bean.MemberBean;

public class LoginDAO extends DAO{

	//ログイン判定
	public MemberBean search(String id,String password)throws Exception{

		//実行結果を格納する変数
		ResultSet rs = null;	//初期値
		MemberBean memberBean = new MemberBean();	//beanをインスタンス化

		Connection con = getConnection();	//データベースにつなぐ
		String sql = "SELECT * FROM Members WHERE id = ? AND password = ?";

		PreparedStatement st = con.prepareStatement(sql);	//プレースホルダを検索文字列に置き換え
		st.setString(1, id);
		st.setString(2, password);
		rs = st.executeQuery();	//select命令実行後、データを受け取る

		if(rs.next()) {
			memberBean.setId(rs.getString("id"));
			memberBean.setUserName(rs.getString("userName"));
			memberBean.setPassword(rs.getString("password"));
			memberBean.setAddress(rs.getString("address"));
		}else {
			return null;
		}

		st.close();
		con.close();

		return memberBean;
	}

}
