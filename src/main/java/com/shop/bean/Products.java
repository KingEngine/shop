package com.shop.bean;

/**
 * 对应表 products
 * 
 * @author king
 *
 */
public class Products implements java.io.Serializable {

	private static final long serialVersionUID = -3122075799066512602L;
	private int id;/* 对应表中id */
	private String productName;/* 对应表中product_name */
	private String productSerialNumber;/* 对应表中product_serial_number */
	private String productCategory;/* 对应表中product_category */
	private int productStock;/* 对应表中product_stock */
	private String productCurrentPrice;/* 对应表中product_current_price */
	private String productOriginalPrice;/* 对应表中product_original_price */
	private String productImagetPath;/* 对应表中product_imaget_path */
	private String productHeat;/* 对应表中product_heat */

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductSerialNumber() {
		return productSerialNumber;
	}

	public void setProductSerialNumber(String productSerialNumber) {
		this.productSerialNumber = productSerialNumber;
	}

	public String getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}

	public int getProductStock() {
		return productStock;
	}

	public void setProductStock(int productStock) {
		this.productStock = productStock;
	}

	public String getProductCurrentPrice() {
		return productCurrentPrice;
	}

	public void setProductCurrentPrice(String productCurrentPrice) {
		this.productCurrentPrice = productCurrentPrice;
	}

	public String getProductOriginalPrice() {
		return productOriginalPrice;
	}

	public void setProductOriginalPrice(String productOriginalPrice) {
		this.productOriginalPrice = productOriginalPrice;
	}

	public String getProductImagetPath() {
		return productImagetPath;
	}

	public void setProductImagetPath(String productImagetPath) {
		this.productImagetPath = productImagetPath;
	}

	public String getProductHeat() {
		return productHeat;
	}

	public void setProductHeat(String productHeat) {
		this.productHeat = productHeat;
	}

}
