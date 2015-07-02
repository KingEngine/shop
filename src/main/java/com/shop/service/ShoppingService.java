package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.bean.Products;
import com.shop.dao.impl.ProductsDaoImpl;


@Service
public class ShoppingService {
	
	@Autowired
	private ProductsDaoImpl productsDao;
	
	public Products getProduct(Integer productId){
		Products queryParam = new Products();
		queryParam.setId(productId);
		return productsDao.selectOne(queryParam);
	}
	
	public List<Products> getProductList(String productCategory){
		Products queryParam = new Products();
		queryParam.setProductCategory(productCategory);
		return productsDao.selectList(queryParam);
	}
	
	public List<Products> getProductListBySecondCatetory(String productCategory){
		Products queryParam = new Products();
		queryParam.setProductCategory(productCategory);
		return productsDao.selectListBySecondCatetory(queryParam);
	}
}
