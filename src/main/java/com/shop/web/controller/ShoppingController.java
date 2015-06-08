package com.shop.web.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.bean.Cart;
import com.shop.bean.CartProducts;
import com.shop.bean.Customer;
import com.shop.bean.Products;
import com.shop.constant.Constants;
import com.shop.service.ShoppingService;

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
		cartProduct.setProductPrice(new BigDecimal(product.getProductCurrentPrice()));
		cartProduct.setProductSN(product.getProductSerialNumber());
		cartProduct.setUnitPrict(new BigDecimal(product.getProductCurrentPrice()));
		cartProduct.setProductCount(1);
		if(null==obj){
			List<CartProducts> cartProducts = new ArrayList<CartProducts>();
			cartProducts.add(cartProduct);
			cart.setCartProducts(cartProducts);
			cart.setTotalPrice(new BigDecimal(product.getProductCurrentPrice()));
		}else{
			cart = (Cart) obj;
			boolean addFlag = true;
			for(CartProducts o:cart.getCartProducts()){
				if(StringUtils.equals(cartProduct.getProductSN(), o.getProductSN())){
					o.setProductCount(o.getProductCount()+1);
					o.setProductPrice(o.getProductPrice().add(cartProduct.getProductPrice()));
					addFlag =false;
				}
			}
			if(addFlag){
				cart.getCartProducts().add(cartProduct);
			}
			//计算总金额
			cart.setTotalPrice(new BigDecimal("0.00"));
			for(CartProducts o:cart.getCartProducts()){
				cart.setTotalPrice(cart.getTotalPrice().add(o.getProductPrice()));
			}
		}
		session.removeAttribute(Constants.SHOPPING_CART);
		session.setAttribute(Constants.SHOPPING_CART, cart);
		return "cart";
	}
	//删除购物车
	@RequestMapping(value = "cartDelete.do", method = { RequestMethod.GET,RequestMethod.POST })
	@ResponseBody
	public String cartDelete(@RequestParam("productSN")String productSN,HttpSession session){
		List<CartProducts> removeList = new ArrayList<CartProducts>();
		Cart cart = (Cart) session.getAttribute(Constants.SHOPPING_CART);
		for(CartProducts product:cart.getCartProducts()){
			if(StringUtils.equals(productSN, product.getProductSN())){
				removeList.add(product);
			}
		}
		cart.getCartProducts().removeAll(removeList);
		//计算总价
		cart.setTotalPrice(new BigDecimal("0.00"));
		for(CartProducts o:cart.getCartProducts()){
			cart.setTotalPrice(cart.getTotalPrice().add(o.getProductPrice()));
		}
		session.removeAttribute(Constants.SHOPPING_CART);
		session.setAttribute(Constants.SHOPPING_CART, cart);
		return cart.getTotalPrice()+"";
	}
	
	//添加购物车
	@RequestMapping(value = "ajaxAddCart.do", method = { RequestMethod.GET,RequestMethod.POST })
	@ResponseBody
	public String ajaxAddCart(@RequestParam("productSN")String productSN,@RequestParam("productCount") String counter,HttpSession session){
        Integer productCount = Integer.parseInt(counter);
		Cart cart = (Cart) session.getAttribute(Constants.SHOPPING_CART);
		CartProducts clone=null;
		for(CartProducts product:cart.getCartProducts()){
			if(StringUtils.equals(productSN, product.getProductSN())){
				clone = product;
				break;
			}
		}
		clone.setProductCount(productCount);
		clone.setProductPrice(clone.getUnitPrict().multiply(new BigDecimal(productCount)));
		List<CartProducts> deletList = new ArrayList<CartProducts>();
		for(CartProducts product:cart.getCartProducts()){
			if(StringUtils.equals(productSN, product.getProductSN())){
				deletList.add(product);
			}
		}
		cart.getCartProducts().removeAll(deletList);
		cart.getCartProducts().add(clone);
		//计算总价
		cart.setTotalPrice(new BigDecimal("0.00"));
		for(CartProducts o:cart.getCartProducts()){
			cart.setTotalPrice(cart.getTotalPrice().add(o.getProductPrice()));
		}
		session.removeAttribute(Constants.SHOPPING_CART);
		session.setAttribute(Constants.SHOPPING_CART, cart);
		return cart.getTotalPrice()+","+clone.getProductPrice();
	}
	
	//查询购物车
	@RequestMapping(value = "getCartPage.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String getCartPage(){
		return "cart";
	}
	
	//清空购物车
	@RequestMapping(value = "clearCart.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String clearCart(){
		return "cart";
	}
	
	
	
	
	
	//查看商品列表
	@RequestMapping(value = "getProductList.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String getProductList(@RequestParam(value="productCategoryId",required=false)String productCategoryId,Model model) {
		List<Products> products = shoppingService.getProductList(productCategoryId);
		model.addAttribute("products", products);
		return "product_list";
	}
	//去结算
	@RequestMapping(value = "settleCart.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String fillContact(HttpSession session){
		Customer customer = (Customer) session.getAttribute(Constants.CUSTOMER);
		if(customer==null){
			return "redirect:loginPre.do?nextPath=fill_contact";
		}
		return "fill_contact";
	}
}
