package com.hanul.member_address;

public class AddressDTO {

	private String id_address, id_member, id_guest, address_1, address_2;
	private int zip_number;
	
	
	public String getId_address() {
		return id_address;
	}
	public void setId_address(String id_address) {
		this.id_address = id_address;
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
	public String getAddress_1() {
		return address_1;
	}
	public void setAddress_1(String address_1) {
		this.address_1 = address_1;
	}
	public String getAddress_2() {
		return address_2;
	}
	public void setAddress_2(String address_2) {
		this.address_2 = address_2;
	}
	public int getZip_number() {
		return zip_number;
	}
	public void setZip_number(int zip_number) {
		this.zip_number = zip_number;
	}
	
	
	
}
