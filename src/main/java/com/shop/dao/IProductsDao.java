package com.shop.dao;

import java.util.List;

import com.shop.bean.Page;
import com.shop.bean.Products;

/**
 * products表操作接口
 * 
 * @author king
 */
public interface IProductsDao {

	public Products selectOne(Products param);

	public List<Products> selectList(Products param);
	
	public List<Products> selectHotList();

	public Page<Products> selectPage(Page<Products> page, Products param);
}
