package com.skt.tourfestival.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.skt.tourfestival.model.vo.Festival;
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

	public ArrayList<Festival> selectFList(SqlSession sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("festivalMapper.selectList", null, rowBounds);
	}
	
	//좋아요 증가
	public void increaseTourLike(SqlSession sqlSession, int tourNo) {
		sqlSession.update("tourMapper.increaseTourLike", tourNo);
	}
	
	//좋아요 감소
	public void decreaseTourLike(SqlSession sqlSession, int tourNo) {
		sqlSession.update("tourMapper.decreaseTourLike", tourNo);
	}
}
