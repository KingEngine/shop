package com.shop.web.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.bean.Cart;
import com.shop.bean.CartProducts;
import com.shop.bean.Products;
import com.shop.constant.Constants;
import com.shop.service.ShoppingService;

/**
 * 购物控制器
 * 
 * @author king
 */
@Controller
public class ShoppingController {
	
	@Autowired
	private ShoppingService shoppingService;
	
	//加入到购物车
	@RequestMapping(value = "addCart.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String addCart(HttpSession session,@RequestParam("productId") Integer productId) {
		Object obj = session.getAttribute(Constants.SHOPPING_CART);
		Products product = shoppingService.getProduct(productId);
		Cart cart = new Cart();
		CartProducts cartProduct = new CartProducts();
		cartProduct.setProductName(product.getProductName());
		cartProduct.setProductPrice(product.getProductCurrentPrice());
		if(null==obj){
			List<CartProducts> cartProducts = new ArrayList<CartProducts>();
			cartProducts.add(cartProduct);
			cart.setCartProducts(cartProducts);
			cart.setTotalPrice(new BigDecimal(product.getProductCurrentPrice()));
		}else{
			cart = (Cart) obj;
			BigDecimal totalPrice = new BigDecimal("0.00");
			for(CartProducts o:cart.getCartProducts()){
				totalPrice.add(new BigDecimal(o.getProductPrice()));
			}
			cart.getCartProducts().add(cartProduct);
			cart.setTotalPrice(totalPrice);
		}
		session.removeAttribute(Constants.SHOPPING_CART);
		session.setAttribute(Constants.SHOPPING_CART, cart);
		return "cart";
	}
	//查询购物车
	@RequestMapping(value = "getCartPage.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String getCartPage(){
		return "cart";
	}
	//去结算
}
