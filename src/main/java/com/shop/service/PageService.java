package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.bean.Products;
import com.shop.dao.impl.ProductsDaoImpl;


@Service
public class PageService {
	
	@Autowired
	private ProductsDaoImpl productsDao;
	
	public List<Products> getHotProductList(){
		
		return productsDao.selectHotList();
		
	}

}
