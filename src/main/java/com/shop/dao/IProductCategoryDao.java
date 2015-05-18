package com.shop.dao;

import java.util.List;

import com.shop.bean.ProductCategory;
/**
 * product_category表操作接口
 * 
 * @author king
 */
public interface IProductCategoryDao{
	 /**
	  * 查询列表
	  * @param 
	  * @return
	  * @throws Exception
	  */
	 public List<ProductCategory> selectList(ProductCategory param);
}


