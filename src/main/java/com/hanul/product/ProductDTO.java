package com.hanul.product;

import java.sql.Date;
import java.util.List;

import com.hanul.product_img.Product_imgDTO;

public class ProductDTO {

	private int id_product, price;
	private String name, platform, company, genre;
	private Date relase_date;
	
	private List<Product_imgDTO> product_imgs;
	
	
	
	
	
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public List<Product_imgDTO> getProduct_imgs() {
		return product_imgs;
	}
	public void setProduct_imgs(List<Product_imgDTO> product_imgs) {
		this.product_imgs = product_imgs;
	}
	public int getId_product() {
		return id_product;
	}
	public void setId_product(int id_product) {
		this.id_product = id_product;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public Date getRelase_date() {
		return relase_date;
	}
	public void setRelase_date(Date relase_date) {
		this.relase_date = relase_date;
	}
	
	
}
