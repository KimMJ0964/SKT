package com.skt.tourfestival.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.skt.festival.model.vo.Festival;
import com.skt.tourist.model.vo.Tourist;

import common.PageInfo;

public class TourFestivalDao {
	public int selectListCount(SqlSession sqlSession) {
		return sqlSession.selectOne("tourMapper.selectListCount");
	}
	
	public ArrayList<Tourist> selectList(SqlSession sqlSession, PageInfo pi){
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


	//상세페이지
	public Tourist selectTour(SqlSession sqlSession, int tourNo) {
		return sqlSession.selectOne("tourMapper.selectTour",tourNo);
	}

	public Festival selectFestival(SqlSession sqlSession, int fsNo) {
		return sqlSession.selectOne("festivalMapper.selectFestival",fsNo);
	}

	
}
