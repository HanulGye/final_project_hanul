package com.hanul.product_stock;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class Product_stockDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE = "product_stockMapper.";
	
	public List<Product_stockDTO> list() throws Exception{
		return sqlSession.selectList(NAMESPACE+"selectList");
	}
}
