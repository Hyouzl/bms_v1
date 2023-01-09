package com.spring.bms_v1.common.dao;

import java.util.List;
import java.util.Map;

import com.spring.bms_v1.common.dto.ContactDto;

public interface CommonDao {

	public int selectOneNewBookCnt() throws Exception;
	public int selectOneGeneralBookCnt() throws Exception;
	public int selectOneBestSellerCnt() throws Exception;
	public int selectOneSteadySellerCnt() throws Exception;
	public List<Map<String,Object>> selectListGoodsNewBooks() throws Exception;
	public List<Map<String,Object>> selectListGoodsBestBooks() throws Exception;
	public List<Map<String,Object>> selectListGoodsSteadyBooks() throws Exception;
	public void insertContact(ContactDto contactDto) throws Exception;
	public List<ContactDto> selectListContact() throws Exception;
	public ContactDto selectOneContact(int contactCd) throws Exception;
	public void deleteContact(int[] deleteContactCdList) throws Exception;
	
}
