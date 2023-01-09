package com.spring.bms_v1.admin.order.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminOrderDaoImpl implements AdminOrderDao{
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<Map<String,Object>> selectListOrder() throws Exception{
		return sqlSession.selectList("admin.order.selectListOrder");
	}
	
}
