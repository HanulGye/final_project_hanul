package com.hanul.member_guest;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class GuestDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE ="guestMapper.";
	
	public int insert_first() throws Exception{
		return sqlSession.insert(NAMESPACE+"insert_first");
	}
	
	
}
