package com.hanul.product_img;

public class Product_imgDTO {
	private int id_product_img, id_product;
	private String fname, oname, kind;
	
	
	public int getId_product_img() {
		return id_product_img;
	}
	public void setId_product_img(int id_product_img) {
		this.id_product_img = id_product_img;
	}
	public int getId_product() {
		return id_product;
	}
	public void setId_product(int id_product) {
		this.id_product = id_product;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getOname() {
		return oname;
	}
	public void setOname(String oname) {
		this.oname = oname;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	
	
}
