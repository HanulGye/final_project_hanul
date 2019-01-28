package com.hanul.product;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	
	@Inject
	private SqlSession sqlSession;
	private final String NAMESPACE = "productMapper.";
	
	public int insert(ProductDTO productDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"insert", productDTO);
	}
}
