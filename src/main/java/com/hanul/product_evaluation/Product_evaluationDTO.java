package com.hanul.product_evaluation;

public class Product_evaluationDTO {

	
	
	private int id_eval_product, id_product, score_eval;
	private String title_eval, contents_eval, id_member;
	
	
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
	public int getScore_eval() {
		return score_eval;
	}
	public void setScore_eval(int score_eval) {
		this.score_eval = score_eval;
	}
	public String getTitle_eval() {
		return title_eval;
	}
	public void setTitle_eval(String title_eval) {
		this.title_eval = title_eval;
	}
	public String getContents_eval() {
		return contents_eval;
	}
	public void setContents_eval(String contents_eval) {
		this.contents_eval = contents_eval;
	}
	public String getId_member() {
		return id_member;
	}
	public void setId_member(String id_member) {
		this.id_member = id_member;
	}
	
	
	
	
	
	//score_eval의 경우, 우선 개별 점수는 정수로 받지만, 종합하여 평균낸 거는 소수점으로 받을 것.
	
	
	
}
