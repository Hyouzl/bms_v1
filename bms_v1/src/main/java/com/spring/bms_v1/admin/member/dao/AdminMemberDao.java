package com.spring.bms_v1.admin.member.dao;

import java.util.List;

import com.spring.bms_v1.admin.member.dto.AdminDto;
import com.spring.bms_v1.member.dto.MemberDto;

public interface AdminMemberDao {
	
	public AdminDto selectAdminLogin(AdminDto adminDto) throws Exception;
	public List<MemberDto> selectListMember() throws Exception;
	
}
