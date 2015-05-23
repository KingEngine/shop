package com.shop.dao.impl;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Component;

import com.shop.bean.CustomerAddress;
import com.shop.dao.ICustomerAddressDao;

@Component
public class CustomerAddressDaoImpl extends SqlSessionDaoSupport implements ICustomerAddressDao{

	 public int insert(CustomerAddress param){
	 	getSqlSession().insert("CustomerAddressManager.insert",param);
		return param.getId();
	 }
}


