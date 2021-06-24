package jp.co.aforce.bean;

public class NewProductBean implements java.io.Serializable{

	private ProductBean product;
	private int count;

	public ProductBean getProduct() {
		return product;
	}

	public int getCount() {
		return count;
	}

	public void setProduct(ProductBean product) {
		this.product=product;
	}

	public void setCount(int count) {
		this.count=count;
	}

}
