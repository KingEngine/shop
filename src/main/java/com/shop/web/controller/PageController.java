package com.shop.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.service.PageService;

@Controller
public class PageController {
	
	@Autowired
	private PageService pageService;
	
	@RequestMapping(value = "getIndex.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String getIndex() {
		return "index";
	}
	
	@RequestMapping(value = "getTop.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String getTop() {
		return "top";
	}
	@RequestMapping(value = "getCenter.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String getCenter(Model model) {
		//获取最热商品列表
		model.addAttribute("hotProducts",pageService.getHotProductList());
		return "center";
	}
	@RequestMapping(value = "getFoot.do", method = { RequestMethod.GET,RequestMethod.POST })
	public String getFoot() {
		return "foot";
	}
}
