package com.spring.bms_v1.member.dao;

import com.spring.bms_v1.member.dto.MemberDto;

public interface MemberDao {
	
	public MemberDto selectLogin(MemberDto memberDto) throws Exception;
	public void insertMember(MemberDto memberDto) throws Exception;
	public String selectDuplicatedId(String memberId) throws Exception;
	public int selectMyOrderCnt(String memberId) throws Exception;
	public int selectMyCartCnt(String memberId) throws Exception;
	
}
