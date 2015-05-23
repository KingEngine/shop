package com.shop.bean;


public class ProductCategory implements java.io.Serializable {
	private static final long serialVersionUID = 6952116942145302811L;
	private int id;/* 对应表中id */
	private String categoryId;/* 对应表中category_id */
	private String categoryName;/* 对应表中category_name */
	private String categoryParentId;/* 对应表中category_parent_id */
	private int categoryLevel;/* 对应表中category_level */
	private String categoryStatus;/* 对应表中category_status */

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategoryParentId() {
		return categoryParentId;
	}

	public void setCategoryParentId(String categoryParentId) {
		this.categoryParentId = categoryParentId;
	}

	public int getCategoryLevel() {
		return categoryLevel;
	}

	public void setCategoryLevel(int categoryLevel) {
		this.categoryLevel = categoryLevel;
	}

	public String getCategoryStatus() {
		return categoryStatus;
	}

	public void setCategoryStatus(String categoryStatus) {
		this.categoryStatus = categoryStatus;
	}
}
