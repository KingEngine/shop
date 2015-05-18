package com.shop.dao;

import java.util.List;

import com.shop.bean.Customer;
/**
 * customer表操作接口
 * 
 * @author king
 */
public interface ICustomerDao{
     /**
	  * 查询对象
	  * @param 
	  * @return
	  * @throws Exception
	  */
	 public Customer selectOne(Customer param);
	 /**
	  * 查询列表
	  * @param 
	  * @return
	  * @throws Exception
	  */
	 public List<Customer> selectList(Customer param);
	 /**
	  * 更新操作
	  * @param 
	  * @return
	  * @throws Exception
	  */
	 public boolean update(Customer param);
	 /**
	  * 删除操作
	  * @param 
	  * @return
	  * @throws Exception
	  */
	 public boolean delete(Customer param);
	 /**
	  * 插入操作
	  * @param 
	  * @return
	  * @throws Exception
	  */
	 public boolean insert(Customer param);
}


