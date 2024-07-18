package com.entity;

public class Files {
	private int id;
	private String img_name;
	private String remark;
	
	public Files() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Files(String img_name, String remark) {
		super();
		this.img_name = img_name;
		this.remark = remark;
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImg_name() {
		return img_name;
	}

	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	

}
