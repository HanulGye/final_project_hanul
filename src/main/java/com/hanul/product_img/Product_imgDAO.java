package com.hanul.product_img;

import java.util.List;

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
	
	public Product_imgDTO onlyMain(int id_product) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"onlyMain", id_product);
	}
	
	public List<Product_imgDTO> shopList(String platform) throws Exception{
		return sqlSession.selectList(NAMESPACE+"shopList", platform);
	}
	
}
