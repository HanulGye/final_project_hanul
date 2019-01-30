package com.hanul.product_option;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class Product_optionDAO {
	
	@Inject 
	private SqlSession sqlSession;
	private static final String NAMESPACE = "product_optionMapper.";
	
	public int insert(Product_optionDTO product_optionDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"insert", product_optionDTO);
	}
	
}
