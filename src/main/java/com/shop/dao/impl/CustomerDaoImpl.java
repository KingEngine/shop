package com.shop.dao.impl;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Component;

import com.shop.bean.Customer;
import com.shop.dao.ICustomerDao;

/**
 * customer表实现类
 *
 * @author king
 */
@Component
public class CustomerDaoImpl extends SqlSessionDaoSupport implements ICustomerDao{
	 /**
	  * 查询对象
	  * @param 
	  * @return
	  * @throws Exception
	  */
	 public Customer selectOne(Customer param){
	 	Object obj = getSqlSession().selectOne("CustomerManager.select", param);
		if(null!=obj){
			return (Customer)obj;
		}
		return null;
	 }
	 /**
	  * 查询列表
	  * @param 
	  * @return
	  * @throws Exception
	  */
	 public List<Customer> selectList(Customer param){
	 	return getSqlSession().selectList("CustomerManager.select", param);
	 }
	 /**
	  * 更新操作
	  * @param 
	  * @return
	  * @throws Exception
	  */
	 public boolean update(Customer param){
	 	int affectedRows = getSqlSession().update("CustomerManager.update", param);
		if(affectedRows>0)
			return true;
		return false;
	 }
	 /**
	  * 删除操作
	  * @param 
	  * @return
	  * @throws Exception
	  */
	 public boolean delete(Customer param){
	 	int affectedRows = getSqlSession().delete("CustomerManager.delete", param);
		if(affectedRows>0)
			return true;
		return false;
	 }
	 /**
	  * 插入操作
	  * @param 
	  * @return
	  * @throws Exception
	  */
	 public boolean insert(Customer param){
		param.setCustomerStatus("0");//默认是可用状态
	 	int affectedRows =  getSqlSession().insert("CustomerManager.insert",param);
		if(affectedRows>0)
			return true;
		return false;
	 }
}


