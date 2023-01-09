package com.spring.bms_v1.member.service;

import com.spring.bms_v1.member.dto.MemberDto;

public interface MemberService {
	
	public boolean login(MemberDto memberDto) throws Exception;
	public void addMember(MemberDto memberDto) throws Exception;
	public String checkDuplicatedId(String memberId) throws Exception;
	public int getMyOrderCnt(String memberId) throws Exception;
	public int getMyCartCnt(String memberId) throws Exception;
	
}
