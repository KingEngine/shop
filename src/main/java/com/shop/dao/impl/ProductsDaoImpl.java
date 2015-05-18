package com.shop.dao.impl;

import java.util.List;

import org.springframework.stereotype.Component;

import com.shop.bean.Page;
import com.shop.bean.Products;
import com.shop.dao.IProductsDao;

/**
 * products表实现类
 *
 * @author king
 */
@Component
public class ProductsDaoImpl extends PageDao implements IProductsDao {
	
	/**
	 * 查询列表
	 * @param
	 * @return
	 * @throws Exception
	 */
	public Products selectOne(Products param) {
		return getSqlSession().selectOne("ProductsManager.select", param);
	}

	/**
	 * 查询列表
	 * @param
	 * @return
	 * @throws Exception
	 */
	public List<Products> selectList(Products param) {
		return getSqlSession().selectList("ProductsManager.select", param);
	}

	/**
	 * 分页查询
	 * @param
	 * @return
	 * @throws Exception
	 */
	public Page<Products> selectPage(Page<Products> page, Products param) {
		return selectPage(page, "ProductsManager.queryPage",
				"ProductsManager.queryPageCount", param);
	}

}
