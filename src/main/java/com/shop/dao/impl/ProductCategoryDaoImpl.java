package com.shop.dao.impl;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Component;

import com.shop.bean.ProductCategory;
import com.shop.dao.IProductCategoryDao;

/**
 * product_category表实现类
 *
 * @author king
 */
@Component("productCategoryDao")
public class ProductCategoryDaoImpl extends SqlSessionDaoSupport implements IProductCategoryDao{
	
	 /**
	  * 查询列表
	  * @param 
	  * @return
	  * @throws Exception
	  */
	 public List<ProductCategory> selectList(ProductCategory param){
	 	return getSqlSession().selectList("ProductCategoryManager.select", param);
	 }
	
}


