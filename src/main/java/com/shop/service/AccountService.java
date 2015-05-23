package com.shop.service;

import java.io.UnsupportedEncodingException;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.bean.Customer;
import com.shop.bean.CustomerAddress;
import com.shop.dao.impl.CustomerAddressDaoImpl;
import com.shop.dao.impl.CustomerDaoImpl;
import com.shop.utils.SecurityUtil;


@Service
public class AccountService {
	@Autowired
	private CustomerDaoImpl customerDao;
	@Autowired
	private CustomerAddressDaoImpl customerAddressDaoImpl;
	
	public boolean register(Customer customer) throws UnsupportedEncodingException{
		//密码加密
		customer.setCustomerPwd(SecurityUtil.encryptMD5(customer.getCustomerPwd()));
		return customerDao.insert(customer);
	}
	
	public Customer login(Customer customer) throws UnsupportedEncodingException{
		Customer query = customerDao.selectOne(customer);
		if(null == query){
			return null;
		}
		if(StringUtils.equals(query.getCustomerPwd(), SecurityUtil.encryptMD5(customer.getCustomerPwd()))){
			return null;
		}
		return query;
	}
	public int fillContact(CustomerAddress address){
		return customerAddressDaoImpl.insert(address);
	}
}
