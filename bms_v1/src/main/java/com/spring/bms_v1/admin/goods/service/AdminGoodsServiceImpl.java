package com.spring.bms_v1.admin.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bms_v1.admin.goods.dao.AdminGoodsDao;
import com.spring.bms_v1.goods.dto.GoodsDto;


@Service
public class AdminGoodsServiceImpl implements AdminGoodsService {
	
	@Autowired
	private AdminGoodsDao adminGoodsDao;

	@Override
	public List<GoodsDto> getGoodsList() throws Exception {
		return adminGoodsDao.selectListGoods();
	}

	@Override
	public void addNewGoods(GoodsDto goodsDto) throws Exception {
		adminGoodsDao.insertGoods(goodsDto);
	}

	@Override
	public void modifyGoods(GoodsDto goodsDto) throws Exception {
		adminGoodsDao.updateGoods(goodsDto);
	}

	@Override
	public void removeGoods(int goodsCd) throws Exception {
		adminGoodsDao.deleteGoods(goodsCd);
	}
	
	
}
