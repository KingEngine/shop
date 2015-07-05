package com.shop.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.bean.Admin;
import com.shop.bean.Customer;
import com.shop.bean.Page;
import com.shop.bean.Trade;
import com.shop.constant.Constants;
import com.shop.service.MMSService;

/**
 * 后台管理控制器
 * 
 * @author King
 */
@Controller
public class MMSController {

	private static final String prefix = "mms/";

	@Autowired
	private MMSService mmsService;

	// 进入主页面
	@RequestMapping(value = "/main.do", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String main(HttpSession session, HttpServletRequest request) {
		Object object = session.getAttribute(Constants.ADMIN);
		if (null == object) {
			return prefix + "login";
		}
		return prefix + "main";
	}

	@RequestMapping(value = "/adminLogin.do", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String login(Admin admin, Model model, HttpSession session) {
		Object object = session.getAttribute(Constants.ADMIN);
		if (null != object) {
			return prefix + "main";
		}
		if (StringUtils.isBlank(admin.getAdminName())) {
			model.addAttribute("errMsg", "请输入用户名");
			return prefix + "login";
		}
		if (StringUtils.isBlank(admin.getAdminPwd())) {
			model.addAttribute("errMsg", "请输入密码");
			return prefix + "login";
		}
		Admin result = mmsService.getAdmin(admin.getAdminName(),
				admin.getAdminPwd());
		if (null != result) {
			return prefix + "main";
		}
		model.addAttribute("errMsg", "用户名或者密码错误");
		return prefix + "login";
	}

	@RequestMapping(value = "/getTop.do", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String getTopPage(HttpSession session, HttpServletRequest request) {
		return prefix + "top";
	}

	@RequestMapping(value = "/getLeft.do", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String getLeftPage(HttpSession session, HttpServletRequest request) {
		return prefix + "left";
	}

	@RequestMapping(value = "/getFoot.do", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String getFootPage(HttpSession session, HttpServletRequest request) {
		return prefix + "foot";
	}

	@RequestMapping(value = "/getWelcome.do", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String getWelcomePage(HttpSession session, HttpServletRequest request) {
		return prefix + "welcome";
	}

	// 查询当前用户
	@RequestMapping(value = "/getCustomerPre.do", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String getCustomerPre(HttpSession session) {
		Object object = session.getAttribute(Constants.ADMIN);
		if (null == object) {
			return prefix + "login";
		}
		return prefix + "customer_pre";
	}

	@RequestMapping(value = "/getCustomerForPage.do", method = {
			RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public Page<Customer> getCustomerForPage(HttpSession session,
			HttpServletRequest request) {
		String curPage = request.getParameter("page");
		String pageSize = request.getParameter("rows");

		Page<Customer> page = new Page<Customer>();
		if (StringUtils.isNotBlank(curPage))
			page.setPageNo(Integer.parseInt(curPage.trim()));
		if (StringUtils.isNotBlank(pageSize))
			page.setPageSize(Integer.parseInt(pageSize.trim()));
		else
			page.setPageSize(10);
		Page<Customer> customers = new Page<Customer>();
		Customer customer = new Customer();
		try {
			customers = mmsService.getCustomerForPage(page, customer);
		} catch (Exception e) {
		}
		return customers;
	}

	// 查询系统交易
	@RequestMapping(value = "/getTradePre.do", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String getTradePre(HttpSession session, HttpServletRequest request) {
		Object object = session.getAttribute(Constants.ADMIN);
		if (null == object) {
			return prefix + "login";
		}
		return prefix + "trade_pre";
	}

	@RequestMapping(value = "/getTradeForPage.do", method = {
			RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public Page<Trade> getTradeForPage(HttpSession session,
			HttpServletRequest request) {
		String curPage = request.getParameter("page");
		String pageSize = request.getParameter("rows");

		Page<Trade> page = new Page<Trade>();
		if (StringUtils.isNotBlank(curPage))
			page.setPageNo(Integer.parseInt(curPage.trim()));
		if (StringUtils.isNotBlank(pageSize))
			page.setPageSize(Integer.parseInt(pageSize.trim()));
		else
			page.setPageSize(10);
		Page<Trade> trades = new Page<Trade>();
		Trade trade = new Trade();
		try {
			trades = mmsService.getTradeForPage(page, trade);
		} catch (Exception e) {
		}
		return trades;
	}
}
