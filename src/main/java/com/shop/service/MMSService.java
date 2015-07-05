package com.shop.service;

import java.io.UnsupportedEncodingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.bean.Admin;
import com.shop.dao.impl.AdminDaoImpl;
import com.shop.utils.SecurityUtil;


@Service
public class MMSService {
	
	@Autowired
	private AdminDaoImpl adminDao;
	
	public Admin getAdmin(String adminName,String adminPwd){
		try {
			return adminDao.select(adminName, SecurityUtil.encryptMD5(adminPwd));
		} catch (UnsupportedEncodingException e) {
			return null;
		}
	}
}
