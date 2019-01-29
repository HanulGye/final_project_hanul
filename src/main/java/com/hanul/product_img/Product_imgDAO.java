package com.hanul.product_img;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class Product_imgDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE = "product_imgMapper.";
	
	public int insert(Product_imgDTO product_imgDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"insert", product_imgDTO);
	}
	
}
