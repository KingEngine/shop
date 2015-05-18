package com.shop.bean;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

/**
 * 购物车类
 * 
 * @author king
 */
public class Cart implements Serializable {

	private static final long serialVersionUID = -8426116794187857119L;

	private BigDecimal totalPrice;

	private List<CartProducts> cartProducts;

	public BigDecimal getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}

	public List<CartProducts> getCartProducts() {
		return cartProducts;
	}

	public void setCartProducts(List<CartProducts> cartProducts) {
		this.cartProducts = cartProducts;
	}
}
