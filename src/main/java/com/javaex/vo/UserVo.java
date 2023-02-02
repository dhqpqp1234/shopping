package com.javaex.vo;

public class UserVo {
	
	private int custInfoNo;
	private String custName;
	private String custId;
	private String custPw;
	private String custEmail;
	private String custPh;
	
	public UserVo() {
		super();
	}

	public int getCustInfoNo() {
		return custInfoNo;
	}

	public void setCustInfoNo(int custInfoNo) {
		this.custInfoNo = custInfoNo;
	}

	public String getCustName() {
		return custName;
	}

	public void setCustName(String custName) {
		this.custName = custName;
	}

	public String getCustId() {
		return custId;
	}

	public void setCustId(String custId) {
		this.custId = custId;
	}

	public String getCustPw() {
		return custPw;
	}

	public void setCustPw(String custPw) {
		this.custPw = custPw;
	}

	public String getCustEmail() {
		return custEmail;
	}

	public void setCustEmail(String custEmail) {
		this.custEmail = custEmail;
	}

	public String getCustPh() {
		return custPh;
	}

	public void setCustPh(String custPh) {
		this.custPh = custPh;
	}

	@Override
	public String toString() {
		return "UserVo [custInfoNo=" + custInfoNo + ", custName=" + custName + ", custId=" + custId + ", custPw="
				+ custPw + ", custEmail=" + custEmail + ", custPh=" + custPh + "]";
	}
	
	
	
	
}
