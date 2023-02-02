package com.javaex.vo;

public class HostVo {
	
	private int buyerNo; 
	private String buyerName;
	private String buyerId;
	private String buyerPw;
	private String buyerEmail;
	private String buyerPh;
	private String buyerAccountNo;
	
	private String productNm;
	private int productNo;
	private String category;
	private String price;
	private String content;
	private String categoryNm;
	private String regDttm;
	private int itCount;
	
	private String saveName;
	
	public HostVo() {
		super();
	}
	
	
	
	public String getSaveName() {
		return saveName;
	}



	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}



	public String getRegDttm() {
		return regDttm;
	}

	public void setRegDttm(String regDttm) {
		this.regDttm = regDttm;
	}

	public String getCategoryNm() {
		return categoryNm;
	}

	public void setCategoryNm(String categoryNm) {
		this.categoryNm = categoryNm;
	}

	public int getBuyerNo() {
		return buyerNo;
	}

	public void setBuyerNo(int buyerNo) {
		this.buyerNo = buyerNo;
	}

	public String getBuyerName() {
		return buyerName;
	}

	public void setBuyerName(String buyerName) {
		this.buyerName = buyerName;
	}

	public String getBuyerId() {
		return buyerId;
	}

	public void setBuyerId(String buyerId) {
		this.buyerId = buyerId;
	}

	public String getBuyerPw() {
		return buyerPw;
	}

	public void setBuyerPw(String buyerPw) {
		this.buyerPw = buyerPw;
	}

	public String getBuyerEmail() {
		return buyerEmail;
	}

	public void setBuyerEmail(String buyerEmail) {
		this.buyerEmail = buyerEmail;
	}

	public String getBuyerPh() {
		return buyerPh;
	}

	public void setBuyerPh(String buyerPh) {
		this.buyerPh = buyerPh;
	}

	public String getBuyerAccountNo() {
		return buyerAccountNo;
	}

	public void setBuyerAccountNo(String buyerAccountNo) {
		this.buyerAccountNo = buyerAccountNo;
	}

	public String getProductNm() {
		return productNm;
	}

	public void setProductNm(String productNm) {
		this.productNm = productNm;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getItCount() {
		return itCount;
	}

	public void setItCount(int itCount) {
		this.itCount = itCount;
	}



	@Override
	public String toString() {
		return "HostVo [buyerNo=" + buyerNo + ", buyerName=" + buyerName + ", buyerId=" + buyerId + ", buyerPw="
				+ buyerPw + ", buyerEmail=" + buyerEmail + ", buyerPh=" + buyerPh + ", buyerAccountNo=" + buyerAccountNo
				+ ", productNm=" + productNm + ", productNo=" + productNo + ", category=" + category + ", price="
				+ price + ", content=" + content + ", categoryNm=" + categoryNm + ", regDttm=" + regDttm + ", itCount="
				+ itCount + ", saveName=" + saveName + "]";
	}


	


}
