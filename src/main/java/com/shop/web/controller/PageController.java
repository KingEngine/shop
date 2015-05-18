package com.shop.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PageController {
	@RequestMapping(value = "/getTop.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String getTop() {
		return "top";
	}
	@RequestMapping(value = "/getCenter.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String getCenter() {
		return "center";
	}
	@RequestMapping(value = "/getFoot.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String getFoot() {
		return "foot";
	}
}
