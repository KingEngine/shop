package com.shop.web.listener;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.shop.bean.ProductCategory;
import com.shop.dao.IProductCategoryDao;

public class ServletListener implements ServletContextListener {

	public void contextDestroyed(ServletContextEvent event) {
		// TODO Auto-generated method stub

	}

	public void contextInitialized(ServletContextEvent event) {
		ServletContext context = event.getServletContext();
		WebApplicationContext webContext = WebApplicationContextUtils
				.getWebApplicationContext(context);
		IProductCategoryDao productCategoryDao = (IProductCategoryDao) webContext.getBean("productCategoryDao");
		ProductCategory category = new ProductCategory();
		category.setCategoryLevel(1);
		category.setCategoryStatus("0");
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		List<ProductCategory>  fistMenus = productCategoryDao.selectList(category);
		for(ProductCategory o:fistMenus){
			Map<String,Object> hashMap = new HashMap<String,Object>();
			hashMap.put("categoryId",o.getCategoryId());
			hashMap.put("categoryName",o.getCategoryName());
			ProductCategory querySecondcategory = new ProductCategory();
			querySecondcategory.setCategoryLevel(2);
			querySecondcategory.setCategoryParentId(o.getCategoryId());
			querySecondcategory.setCategoryStatus("0");
			List<ProductCategory>  secondMenus = productCategoryDao.selectList(querySecondcategory);
			hashMap.put("secondMenus", secondMenus);
			list.add(hashMap);
		}
		context.setAttribute("firstMenu", list);
	}
}
