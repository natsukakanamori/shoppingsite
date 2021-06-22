package jp.co.aforce.bean;

public class ProductBean implements java.io.Serializable{
	private String productId;
	private String productName;
	private int price;
	private String image;
	private String categoryId;

	public String getProductId() {
		return productId;
	}

	public String getProductName() {
		return productName;
	}

	public int getPrice() {
		return price;
	}

	public String getImage() {
		return image;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
}
