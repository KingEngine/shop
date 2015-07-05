package com.shop.bean;

import java.io.Serializable;

public class Trade implements Serializable {

	private static final long serialVersionUID = -4715753547240821546L;
	private String MerNo;
	private String BillNo;
	private String Amount;
	private String Result;
	private String Succeed;
	private String MerRemark;

	public String getMerNo() {
		return MerNo;
	}

	public void setMerNo(String merNo) {
		MerNo = merNo;
	}

	public String getBillNo() {
		return BillNo;
	}

	public void setBillNo(String billNo) {
		BillNo = billNo;
	}

	public String getAmount() {
		return Amount;
	}

	public void setAmount(String amount) {
		Amount = amount;
	}

	public String getResult() {
		return Result;
	}

	public void setResult(String result) {
		Result = result;
	}

	public String getSucceed() {
		return Succeed;
	}

	public void setSucceed(String succeed) {
		Succeed = succeed;
	}

	public String getMerRemark() {
		return MerRemark;
	}

	public void setMerRemark(String merRemark) {
		MerRemark = merRemark;
	}

}
