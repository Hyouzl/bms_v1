package com.spring.bms_v1.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.bms_v1.member.dto.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao{
	
	@Autowired
	private SqlSession sqlSession;	
	
	@Override
	public MemberDto selectLogin(MemberDto memberDto) throws Exception{
	   return sqlSession.selectOne("member.selectLogin" , memberDto);
	}
	
	@Override
	public void insertMember(MemberDto memberDto) throws Exception{
		sqlSession.insert("member.insertMember" , memberDto);
	}

	@Override
	public String selectDuplicatedId(String memberId) throws Exception{
		return sqlSession.selectOne("member.selectDuplicatedId" , memberId);
	}
	
	@Override
	public int selectMyOrderCnt(String memberId) throws Exception {
		return sqlSession.selectOne("member.selectMyOrderCnt" , memberId);
	}

	@Override
	public int selectMyCartCnt(String memberId) throws Exception {
		return sqlSession.selectOne("member.selectMyCartCnt" , memberId);
	}
	
}
