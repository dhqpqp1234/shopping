package com.javaex.vo;

public class FileVo {
	
	private int fileNo;
	private String orgName;
	private String saveName;
	private String filePath;
	private long fileSize;
	private int regNo;
	private int goupNo;
	
	public FileVo() {
		super();
	}
	
	
	
	public int getGoupNo() {
		return goupNo;
	}



	public void setGoupNo(int goupNo) {
		this.goupNo = goupNo;
	}



	public int getRegNo() {
		return regNo;
	}



	public void setRegNo(int regNo) {
		this.regNo = regNo;
	}



	public int getFileNo() {
		return fileNo;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}

	public String getOrgName() {
		return orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}

	public String getSaveName() {
		return saveName;
	}

	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public long getFileSize() {
		return fileSize;
	}

	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}



	@Override
	public String toString() {
		return "FileVo [fileNo=" + fileNo + ", orgName=" + orgName + ", saveName=" + saveName + ", filePath=" + filePath
				+ ", fileSize=" + fileSize + ", regNo=" + regNo + ", goupNo=" + goupNo + "]";
	}


	
	
	
}
