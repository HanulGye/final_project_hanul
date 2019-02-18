package com.hanul.product;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE = "productMapper.";
	
	public int insert(ProductDTO productDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"insert", productDTO);
	}
	
	public int getProductId() throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getProductId");
	}
	
	public List<ProductDTO> selectList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"selectList");
	}
	
	public List<ProductDTO> selectListBySearch(String platform) throws Exception{
		return sqlSession.selectList(NAMESPACE+"selectListBySearch", platform);
	}
	
	public List<ProductDTO> cartSelect(String id_member) throws Exception{
		return sqlSession.selectList(NAMESPACE+"cartSelect", id_member);
	}
	
	public List<ProductDTO> shopList(String platform) throws Exception{
		return sqlSession.selectList(NAMESPACE+"shopList", platform);
	}
	
	public List<ProductDTO> shopListGenre(ProductDTO productDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"shopListGenre", productDTO);
	}
	
	public List<ProductDTO> shopListAll(String genre) throws Exception{
		return sqlSession.selectList(NAMESPACE+"shopListAll", genre);
	}
	
	public List<ProductDTO> selectOne(ProductDTO productDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"selectOne", productDTO);
	}
	
}
