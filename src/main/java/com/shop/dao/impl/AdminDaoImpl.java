package com.shop.dao.impl;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Component;

import com.shop.bean.Admin;
import com.shop.dao.IAdminDao;

@Component
public class AdminDaoImpl extends SqlSessionDaoSupport implements IAdminDao{

	public Admin select(String adminName, String adminPwd) {
		Admin param = new Admin();
		param.setAdminName(adminName);
		param.setAdminPwd(adminPwd);
		return this.getSqlSession().selectOne("AdminManager.select", param);
	}

}
