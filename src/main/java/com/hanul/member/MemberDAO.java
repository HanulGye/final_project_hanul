package com.hanul.member;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE = "memberMapper.";
	
	public int join(MemberDTO memberDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"join", memberDTO);
	}
	
	public String idCheck(String id_member) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"idCheck", id_member);
	}
	
	public MemberDTO login(MemberDTO memberDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"login", memberDTO);
	}
	//member 꺼내오는 쿼리 매퍼에서 짜서 그거 불러오는거 하나 추가해야됨 . 
	
	public MemberDTO orderCheck(MemberDTO memberDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"orderCheck", memberDTO);
	}
	
	public MemberDTO find_mail(MemberDTO memberDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"find_mail", memberDTO);
	}
	
}
