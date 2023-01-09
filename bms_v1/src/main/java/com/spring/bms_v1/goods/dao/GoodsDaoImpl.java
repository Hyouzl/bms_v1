package com.spring.bms_v1.goods.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.bms_v1.goods.dto.GoodsDto;

@Repository
public class GoodsDaoImpl implements GoodsDao{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<GoodsDto> selectGoodsList(Map<String,String> goodsListMap) throws Exception {
	   return sqlSession.selectList("goods.selectListGoods" , goodsListMap);	
	}
	
	@Override
	public List<GoodsDto> selectRelatedGoodsList(Map<String,Object> goodsMap) throws Exception {
		return sqlSession.selectList("goods.selectListRelatedGoods" , goodsMap);	
	}
	
	@Override
	public GoodsDto selectOneGoods(int goodsCd) throws Exception{
		return sqlSession.selectOne("goods.selectOneGoods" , goodsCd);
	}

	@Override
	public List<GoodsDto> selectListSearchGoods(Map<String, Object> searchMap) throws Exception {
		return sqlSession.selectList("goods.selectListSearchGoods" , searchMap);
	}
	
}
