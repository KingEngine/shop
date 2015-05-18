package com.shop.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AccountController {
	private Logger logger = LoggerFactory.getLogger(getClass());
	@RequestMapping(value = "/register.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String register() {
		logger.info("11111");
		return "login";
	}
}
