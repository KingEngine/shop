package com.shop.service;

import java.io.UnsupportedEncodingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.bean.Admin;
import com.shop.bean.Customer;
import com.shop.bean.Page;
import com.shop.bean.Trade;
import com.shop.dao.impl.AdminDaoImpl;
import com.shop.dao.impl.CustomerDaoImpl;
import com.shop.dao.impl.TradeDaoImpl;
import com.shop.utils.SecurityUtil;


@Service
public class MMSService {
	
	@Autowired
	private AdminDaoImpl adminDao;
	@Autowired
	private CustomerDaoImpl customerDao;
	@Autowired
	private TradeDaoImpl tradeDao;
	
	public Admin getAdmin(String adminName,String adminPwd){
		try {
			return adminDao.select(adminName, SecurityUtil.encryptMD5(adminPwd));
		} catch (UnsupportedEncodingException e) {
			return null;
		}
	}
	
	public Page<Customer> getCustomerForPage(Page<Customer> page,Customer customer){
		return customerDao.selectForPage(page, customer);
	}
	
	public Page<Trade> getTradeForPage(Page<Trade> page,Trade trade){
		return tradeDao.selectForPage(page, trade);
	}
}
