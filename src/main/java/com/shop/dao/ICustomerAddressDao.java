package com.shop.dao;


import com.shop.bean.CustomerAddress;
/**
 * customer_address表操作接口
 * 
 * @author king
 */
public interface ICustomerAddressDao{
	 /**
	  * 插入操作
	  * @param 
	  * @return
	  * @throws Exception
	  */
	 public int insert(CustomerAddress param);
}


