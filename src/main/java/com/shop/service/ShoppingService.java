package com.shop.service;

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

}
