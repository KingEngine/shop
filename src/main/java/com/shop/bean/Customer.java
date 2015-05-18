package com.shop.bean;

/**
 * 对应表 customer
 * 
 * @author king
 *
 */
public class Customer implements java.io.Serializable {

	private static final long serialVersionUID = 4812585912417729578L;
	private int id;/* 对应表中id */
	private String customerNickname;/* 对应表中customer_nickname */
	private String customerPwd;/* 对应表中customer_pwd */
	private String customerEmail;/* 对应表中customer_email */
	private String customerPhone;/* 对应表中customer_phone */
	private String customerPwdQuestion;/* 对应表中customer_pwd_question */
	private String customerPwdAnswer;/* 对应表中customer_pwd_answer */
	private String customerStatus;/* 对应表中customer_status */

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCustomerNickname() {
		return customerNickname;
	}

	public void setCustomerNickname(String customerNickname) {
		this.customerNickname = customerNickname;
	}

	public String getCustomerPwd() {
		return customerPwd;
	}

	public void setCustomerPwd(String customerPwd) {
		this.customerPwd = customerPwd;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getCustomerPhone() {
		return customerPhone;
	}

	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}

	public String getCustomerPwdQuestion() {
		return customerPwdQuestion;
	}

	public void setCustomerPwdQuestion(String customerPwdQuestion) {
		this.customerPwdQuestion = customerPwdQuestion;
	}

	public String getCustomerPwdAnswer() {
		return customerPwdAnswer;
	}

	public void setCustomerPwdAnswer(String customerPwdAnswer) {
		this.customerPwdAnswer = customerPwdAnswer;
	}

	public String getCustomerStatus() {
		return customerStatus;
	}

	public void setCustomerStatus(String customerStatus) {
		this.customerStatus = customerStatus;
	}
}
