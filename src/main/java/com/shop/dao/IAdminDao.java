package com.shop.dao;

import com.shop.bean.Admin;

public interface IAdminDao {
	
	public Admin select(String adminName,String adminPwd);

}
