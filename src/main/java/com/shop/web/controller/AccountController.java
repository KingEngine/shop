package com.shop.web.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.bean.Customer;
import com.shop.bean.CustomerAddress;
import com.shop.constant.Constants;
import com.shop.service.AccountService;

@Controller
public class AccountController {
	private Logger logger= LoggerFactory.getLogger(getClass());
	
	@Autowired
	private AccountService accountService;
	
	@RequestMapping(value = "loginPre.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String loginPre(@RequestParam(value="nextPath",required=false)String nextPath,ModelMap model) {
		model.put("nextPath", nextPath);
		return "login";
	}
	
	@RequestMapping(value = "login.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String login(Customer customer,@RequestParam(value="nextPath",required=false)String nextPath,HttpSession session
			,Model model) {
		try {
			Customer query = accountService.login(customer);
			if(null!=query){
				session.setAttribute(Constants.CUSTOMER, query);
			}else{
				model.addAttribute("EEE", "用户名或密码错误");
				return "error";
			}
		} catch (UnsupportedEncodingException e) {
			
		}
		if(StringUtils.isBlank(nextPath)){
			return "redirect:getCenter.do";
		}
		return nextPath;
	}
	
	
	@RequestMapping(value = "register.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String register() {
		return "register";
	}
	@RequestMapping(value = "registerSubmit.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String registerSubmit(Customer customer,Model model) {
		if(logger.isInfoEnabled()){
			logger.info("用户:{}发起注册请求",new Object[]{customer.getCustomerNickname()});
		}
		boolean result = false;
		try {
			result = accountService.register(customer);
			if(result){
				return "register_success";
			}else{
				return "register_failed";
			}
		} catch (UnsupportedEncodingException e) {
			model.addAttribute("EEE", e.getMessage());
			return "error";
		}
	}
	
	@RequestMapping(value = "fillContact.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String fillContact(CustomerAddress address,HttpSession session,Model model) {
		//得到用户ID
		Customer customer = (Customer) session.getAttribute(Constants.CUSTOMER);
		address.setCustomerId(customer.getId());
		int addressId = accountService.fillContact(address);
		//清除购物车
		session.removeAttribute(Constants.SHOPPING_CART);
		//TODO 记录插入到订单表中
		return "cartSettle";
	}
}
