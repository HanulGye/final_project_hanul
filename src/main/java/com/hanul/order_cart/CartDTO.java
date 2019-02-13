package com.hanul.order_cart;

import java.sql.Date;
import java.util.List;

import com.hanul.product.ProductDTO;
import com.hanul.product_option.Product_optionDTO;

public class CartDTO {

	private String id_cart_order;
	private int id_product;
	private int id_option_product;
	private int quantity;
	private String id_member;
	private String id_guest;
	private Date reg_date;
	
	private ProductDTO products;
	private Product_optionDTO product_options;
	
	
	public String getId_cart_order() {
		return id_cart_order;
	}
	public void setId_cart_order(String id_cart_order) {
		this.id_cart_order = id_cart_order;
	}
	public int getId_product() {
		return id_product;
	}
	public void setId_product(int id_product) {
		this.id_product = id_product;
	}
	public int getId_option_product() {
		return id_option_product;
	}
	public void setId_option_product(int id_option_product) {
		this.id_option_product = id_option_product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getId_member() {
		return id_member;
	}
	public void setId_member(String id_member) {
		this.id_member = id_member;
	}
	public String getId_guest() {
		return id_guest;
	}
	public void setId_guest(String id_guest) {
		this.id_guest = id_guest;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public ProductDTO getProducts() {
		return products;
	}
	public void setProducts(ProductDTO products) {
		this.products = products;
	}
	public Product_optionDTO getProduct_options() {
		return product_options;
	}
	public void setProduct_options(Product_optionDTO product_options) {
		this.product_options = product_options;
	}
	
	
	
	
	
	
	
}
