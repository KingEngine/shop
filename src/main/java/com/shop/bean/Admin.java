package com.shop.bean;

public class Admin implements java.io.Serializable {

	private static final long serialVersionUID = -3122075799066512602L;
	private int id;/* 对应表中id */
	private String adminName;/* 对应表中admin_name */
	private String adminPwd;/* 对应表中admin_pwd */

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminPwd() {
		return adminPwd;
	}

	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}

}
