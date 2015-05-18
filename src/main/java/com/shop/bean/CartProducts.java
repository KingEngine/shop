package com.shop.bean;

public class CartProducts {
	private String productSN;

	private String productName;

	private String productPrice;

	private int productCount;

	public CartProducts() {
	}
	public String getProductSN() {
		return productSN;
	}

	public void setProductSN(String productSN) {
		this.productSN = productSN;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}

	public int getProductCount() {
		return productCount;
	}

	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}
}
