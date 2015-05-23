package com.shop.bean;

import java.math.BigDecimal;

public class CartProducts {
	private String productSN;

	private String productName;

	private BigDecimal productPrice;

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

	public BigDecimal getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(BigDecimal productPrice) {
		this.productPrice = productPrice;
	}

	public int getProductCount() {
		return productCount;
	}

	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}
}
