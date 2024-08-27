package com.farm.dto;

public class FileDto {
	
	private int id;
	private int product_id;
	private int fno;
	private String oName;
	private String sName;
	private String rdate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getFno() {
		return fno;
	}
	public void setFno(int fno) {
		this.fno = fno;
	}
	public String getoName() {
		return oName;
	}
	public void setoName(String oName) {
		this.oName = oName;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	
	@Override
	public String toString() {
		return "FileDto [id=" + id + ", product_id=" + product_id + ", fno=" + fno + ", oName=" + oName + ", sName="
				+ sName + ", rdate=" + rdate + "]";
	}
	
	
	
	

	
	
	

}
