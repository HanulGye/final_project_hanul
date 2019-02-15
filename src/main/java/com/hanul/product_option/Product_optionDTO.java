package com.hanul.product_option;

public class Product_optionDTO {
	private int id_option_product;
	private int id_product;
	private String name;
	private int price;
	
	public int getId_option_product() {
		return id_option_product;
	}
	public void setId_option_product(int id_option_product) {
		this.id_option_product = id_option_product;
	}
	public int getId_product() {
		return id_product;
	}
	public void setId_product(int id_product) {
		this.id_product = id_product;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
		
}
