package com.hanul.order_cart;

import java.util.List;
import java.util.Map;

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
	
	public List<CartDTO> cartSelect_guest(String id_guest) throws Exception{
		return sqlSession.selectList(NAMESPACE+"cartSelect_guest", id_guest);
	}
	
	public int cartDel(String id_cart_order) throws Exception{
		return sqlSession.delete(NAMESPACE+"cartDel", id_cart_order);
	}
	
	//매개변수에 map으로 집어넣고 밸류에 String
	//쿼리문의 조건에 들어가는 컬럼을 where 태그를 사용해 바꿔주는 과정에서 
	//일반 스트링 클래스는 문제가 되어 맵으로 변경 
	//이때 당연히 매퍼의 파라미터 타입도 맵으로 변경해줘야함.
	public int cartDelAll(Map<String, String> map) throws Exception{
		return sqlSession.delete(NAMESPACE+"cartDelAll", map);
	}
		
	public int optUpdate(CartDTO cartDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"optUpdate", cartDTO);
	}
	
	public int cartInsert(CartDTO cartDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"cartInsert", cartDTO);
	}
}
