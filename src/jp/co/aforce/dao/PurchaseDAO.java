package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import jp.co.aforce.bean.NewProductBean;
import jp.co.aforce.bean.ProductBean;

public class PurchaseDAO extends DAO{
	public boolean insert(
		List<NewProductBean>cart,String userName,String address
		)throws Exception{
			Connection con=getConnection();
			con.setAutoCommit(false);

			for(NewProductBean newProductBean : cart) {
				PreparedStatement st=con.prepareStatement(
					"insert into purchase values(null,?,?,?,?,?,?)");
				ProductBean p=newProductBean.getProduct();
				st.setString(1, p.getProductId());
				st.setString(2, p.getProductName());
				st.setInt(3, p.getPrice());
				st.setInt(4, newProductBean.getCount());
				st.setString(5, userName);
				st.setString(6,address);
				int line=st.executeUpdate();
				st.close();

				if(line!=1) {
					con.rollback();
					con.setAutoCommit(true);
					con.close();
					return false;
				}
			}

		con.commit();
		con.setAutoCommit(true);
		con.close();
		return true;
	}

}
