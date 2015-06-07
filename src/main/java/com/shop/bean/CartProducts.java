package com.shop.bean;

import java.io.Serializable;
import java.math.BigDecimal;

public class CartProducts implements Cloneable,Serializable{

	private static final long serialVersionUID = 1723574841803979184L;

	private String productSN;

	private String productName;

	private BigDecimal productPrice;
	
	private BigDecimal unitPrict;//单价

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

	public BigDecimal getUnitPrict() {
		return unitPrict;
	}

	public void setUnitPrict(BigDecimal unitPrict) {
		this.unitPrict = unitPrict;
	}
	@Override
	public CartProducts clone() {
		CartProducts cartProducts = null;
		try {
			cartProducts = (CartProducts) super.clone();
		} catch (CloneNotSupportedException e) {
			e.printStackTrace();
		}
		return cartProducts;
	}
}
