package com.spring.bms_v1.admin.goods.service;

import java.util.List;

import com.spring.bms_v1.goods.dto.GoodsDto;

public interface AdminGoodsService {
	
	public List<GoodsDto> getGoodsList() throws Exception;
	public void addNewGoods(GoodsDto goodsDto) throws Exception;
	public void modifyGoods(GoodsDto goodsDto) throws Exception;
	public void removeGoods(int goodsCd) throws Exception;
	
}
