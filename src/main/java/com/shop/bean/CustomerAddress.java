package com.shop.bean;

/**
 * 对应表 customer_address
 * 
 * @author king
 *
 */
public class CustomerAddress implements java.io.Serializable {

	private static final long serialVersionUID = -6221597645429389174L;
	private int id;/* 对应表中id */
	private int customerId;/* 对应表中customer_id */
	private String customerPhone;/* 对应表中customer_phone */
	private String customerAddress;/* 对应表中customer_address */
	private String customerPostalCode;/* 对应表中customer_postal_code */

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getCustomerPhone() {
		return customerPhone;
	}

	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}

	public String getCustomerAddress() {
		return customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}

	public String getCustomerPostalCode() {
		return customerPostalCode;
	}

	public void setCustomerPostalCode(String customerPostalCode) {
		this.customerPostalCode = customerPostalCode;
	}

}
