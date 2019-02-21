package com.hanul.order_cart;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE ="order_cartMapper.";
	
	public List<CartDTO> cartSelect(String id_member) throws Exception{
		return sqlSession.selectList(NAMESPACE+"cartSelect", id_member);
	}
	
	public int cartDel(String id_cart_order) throws Exception{
		return sqlSession.delete(NAMESPACE+"cartDel", id_cart_order);
	}
	
	public int cartDelAll(String id_member) throws Exception{
		return sqlSession.delete(NAMESPACE+"cartDelAll", id_member);
	}
	
	public int optUpdate(CartDTO cartDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"optUpdate", cartDTO);
	}
	
	public int cartInsert(CartDTO cartDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"cartInsert", cartDTO);
	}
}
