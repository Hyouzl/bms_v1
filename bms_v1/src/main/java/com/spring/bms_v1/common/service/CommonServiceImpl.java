package com.spring.bms_v1.common.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bms_v1.common.dao.CommonDao;
import com.spring.bms_v1.common.dto.ContactDto;

@Service
public class CommonServiceImpl implements CommonService {

	@Autowired
	private CommonDao commonDao;

	@Override
	public int getNewBookCnt() throws Exception {
		return commonDao.selectOneNewBookCnt();
	}


	@Override
	public int getGeneralBookCnt() throws Exception {
		return commonDao.selectOneGeneralBookCnt();
	}


	@Override
	public int getBestSellerCnt() throws Exception {
		return commonDao.selectOneBestSellerCnt();
	}


	@Override
	public int getSteadySellerCnt() throws Exception {
		return commonDao.selectOneSteadySellerCnt();
	}


	@Override
	public List<Map<String, Object>> getNewGoodsMainInfo() throws Exception {
		return commonDao.selectListGoodsNewBooks();
	}


	@Override
	public List<Map<String, Object>> getBestGoodsMainInfo() throws Exception {
		return commonDao.selectListGoodsBestBooks();
	}


	@Override
	public List<Map<String, Object>> getSteadyGoodsMainInfo() throws Exception {
		return commonDao.selectListGoodsSteadyBooks();
	}


	@Override
	public void addNewContact(ContactDto contactDto) throws Exception {
		commonDao.insertContact(contactDto);
	}


	@Override
	public List<ContactDto> getContactList() throws Exception {
		return commonDao.selectListContact();
	}


	@Override
	public ContactDto getContactDetail(int contactCd) throws Exception {
		return commonDao.selectOneContact(contactCd);
	}


	@Override
	public void removeContact(int[] deleteContactCdList) throws Exception {
		commonDao.deleteContact(deleteContactCdList);
	}
	
}
