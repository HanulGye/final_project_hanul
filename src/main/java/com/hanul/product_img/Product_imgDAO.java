package com.hanul.product_img;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hanul.product.ProductDTO;

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
	
	public List<Product_imgDTO> shopListGenre(ProductDTO productDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"shopListGenre", productDTO);
	}
	
	public List<Product_imgDTO> shopListAll(String genre) throws Exception {
		return sqlSession.selectList(NAMESPACE+"shopListAll", genre);
	}
	
	public List<Product_imgDTO> selectOne(ProductDTO productDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"selectOne", productDTO);
	}
}
