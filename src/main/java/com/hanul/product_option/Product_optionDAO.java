package com.hanul.product_option;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hanul.product.ProductDTO;

@Repository
public class Product_optionDAO {
	
	@Inject 
	private SqlSession sqlSession;
	private static final String NAMESPACE = "product_optionMapper.";
	
	public int insert(Product_optionDTO product_optionDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"insert", product_optionDTO);
	}
	
	public List<Product_optionDTO> cartSelect(String id_member) throws Exception{
		return sqlSession.selectList(NAMESPACE+"cartSelect", id_member);
	}
	
	public List<Product_optionDTO> cartOptSel(String id_cart_order) throws Exception{
		return sqlSession.selectList(NAMESPACE+"cartOptSel", id_cart_order);
	}
	
	public List<Product_optionDTO> selectOne(ProductDTO productDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"selectOne", productDTO);
	}
	
}
