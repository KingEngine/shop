package com.shop.bean;

import java.io.Serializable;

public class Trade implements Serializable {

	private static final long serialVersionUID = -4715753547240821546L;
	private int id;
	private String merNo;
	private String billNo;
	private String amount;
	private String result;
	private String succeed;
	private String merRemark;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMerNo() {
		return merNo;
	}

	public void setMerNo(String merNo) {
		this.merNo = merNo;
	}

	public String getBillNo() {
		return billNo;
	}

	public void setBillNo(String billNo) {
		this.billNo = billNo;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getSucceed() {
		return succeed;
	}

	public void setSucceed(String succeed) {
		this.succeed = succeed;
	}

	public String getMerRemark() {
		return merRemark;
	}

	public void setMerRemark(String merRemark) {
		this.merRemark = merRemark;
	}

}
