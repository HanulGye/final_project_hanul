package com.hanul.gameMall;

import static org.junit.Assert.*;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.hanul.product_evaluation.Product_evaluationDAO;
import com.hanul.product_evaluation.Product_evaluationDTO;


public class Nulltest extends AbstractTestCase{

	@Inject
	Product_evaluationDAO Product_evaluationDAO;
	@Inject
	private SqlSession sqlSession;
	
	@Test
	public void test() throws Exception{
		List<Product_evaluationDTO> ar = Product_evaluationDAO.selectList(15);
		double a = 0.0;
		for(int i=0;i<ar.size();i++) {
			a = a+ ar.get(i).getScore_eval();
			System.out.println(a);
			
		}
		double sum_score = a/ar.size();
		System.out.println(sum_score);
	}
	
	@Test
	public void test2() throws Exception{
		System.out.println("dddd");
		assertNotNull(sqlSession);
	}

}
