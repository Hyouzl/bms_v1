package com.spring.bms_v1.admin.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.bms_v1.admin.member.dto.AdminDto;
import com.spring.bms_v1.member.dto.MemberDto;

@Repository
public class AdminMemberDaoImpl implements AdminMemberDao{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public AdminDto selectAdminLogin(AdminDto adminDto) throws Exception{
	   return sqlSession.selectOne("admin.member.selectAdminLogin" , adminDto);
	}
	
	public List<MemberDto> selectListMember() throws Exception{
		return sqlSession.selectList("admin.member.selectListMember");
	}
	
}
