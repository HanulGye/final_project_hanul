package com.hanul.product_stock;

import java.sql.Date;

public class Product_stockDTO {

	private int id_stock_product, id_product, incoming, outcoming, current_inventory;
	private Date reg_date;
	
	
	
	
	public int getId_stock_product() {
		return id_stock_product;
	}
	public void setId_stock_product(int id_stock_product) {
		this.id_stock_product = id_stock_product;
	}
	public int getId_product() {
		return id_product;
	}
	public void setId_product(int id_product) {
		this.id_product = id_product;
	}
	public int getIncoming() {
		return incoming;
	}
	public void setIncoming(int incoming) {
		this.incoming = incoming;
	}
	public int getOutcoming() {
		return outcoming;
	}
	public void setOutcoming(int outcoming) {
		this.outcoming = outcoming;
	}
	public int getCurrent_inventory() {
		return current_inventory;
	}
	public void setCurrent_inventory(int current_inventory) {
		this.current_inventory = current_inventory;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	
}
