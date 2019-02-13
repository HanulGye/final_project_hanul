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
}
