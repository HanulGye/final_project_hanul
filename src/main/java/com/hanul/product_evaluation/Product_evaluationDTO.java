package com.hanul.product_evaluation;

public class Product_evaluationDTO {

	private int id_eval_product, id_product, id_member;
	private double score_eval;
	
	
	
	public int getId_eval_product() {
		return id_eval_product;
	}
	public void setId_eval_product(int id_eval_product) {
		this.id_eval_product = id_eval_product;
	}
	public int getId_product() {
		return id_product;
	}
	public void setId_product(int id_product) {
		this.id_product = id_product;
	}
	public int getId_member() {
		return id_member;
	}
	public void setId_member(int id_member) {
		this.id_member = id_member;
	}
	public double getScore_eval() {
		return score_eval;
	}
	public void setScore_eval(double score_eval) {
		this.score_eval = score_eval;
	}
	
	
}
