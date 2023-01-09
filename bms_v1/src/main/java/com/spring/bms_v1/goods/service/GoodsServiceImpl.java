package com.spring.bms_v1.goods.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bms_v1.goods.dao.GoodsDao;
import com.spring.bms_v1.goods.dto.GoodsDto;

@Service
public class GoodsServiceImpl implements GoodsService{
	
	@Autowired
	private GoodsDao goodsDao;
	
	public List<GoodsDto> getGoodsList(Map<String,String> goodsListMap) throws Exception {
		return goodsDao.selectGoodsList(goodsListMap);
	}
	
	@Override
	public List<GoodsDto> getRelatedGoodsList(Map<String,Object> goodsMap) throws Exception {
		return goodsDao.selectRelatedGoodsList(goodsMap);
	}
	
	public GoodsDto getGoodsDetail(int goodsCd) throws Exception {
		return goodsDao.selectOneGoods(goodsCd);
	}

	@Override
	public List<GoodsDto> getSearchGoodsList(Map<String, Object> searchMap) throws Exception {
		return goodsDao.selectListSearchGoods(searchMap);
	}
	
}
