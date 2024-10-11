package com.skt.tourfestival.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.skt.tourfestival.model.vo.Tour;

import common.PageInfo;

public class TourFestivalDao {
	public int selectListCount(SqlSession sqlSession) {
		return sqlSession.selectOne("tourMapper.selectListCount");
	}
	
	public ArrayList<Tour> selectList(SqlSession sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("tourMapper.selectList", null, rowBounds);
	}
}
