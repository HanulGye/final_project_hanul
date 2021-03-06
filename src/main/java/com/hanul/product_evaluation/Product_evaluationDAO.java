package com.hanul.product_evaluation;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hanul.product.ProductDTO;

@Repository
public class Product_evaluationDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE="product_evalMapper.";
	
	public List<Product_evaluationDTO> selectList(Integer id_product) throws Exception{
		return sqlSession.selectList(NAMESPACE+"selectList", id_product);
	}	
	
	public int insert(Product_evaluationDTO product_evaluationDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"insert", product_evaluationDTO);
	}
	
	public List<String> shopList(String platform) throws Exception{
		return sqlSession.selectList(NAMESPACE+"shopList", platform);
	}
	
	public List<String> shopListGenre(ProductDTO productDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"shopListGenre", productDTO);
	}
	
	public List<String> shopListAll(String genre) throws Exception{
		return sqlSession.selectList(NAMESPACE+"shopListAll", genre);
	}
}
