package com.skt.tourfestival.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.skt.tourfestival.model.dao.TourFestivalDao;
import com.skt.tourfestival.model.vo.Festival;
import com.skt.tourfestival.model.vo.Tour;

import common.PageInfo;
import common.Template;

public class TourFestivalServiceImpl implements TourFestivalService{
	private TourFestivalDao tfDao = new TourFestivalDao();
	public TourFestivalServiceImpl() {
		this.tfDao = new TourFestivalDao();
	}

	@Override
	public int selectListCount() {
		SqlSession sqlSession = Template.getSqlSession();
		int listCount = tfDao.selectListCount(sqlSession);
		
		sqlSession.close();
		return listCount; 
	}

	@Override
	public ArrayList<Tour> selectList(PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Tour> Tlist = tfDao.selectList(sqlSession, pi);
		
		sqlSession.close();
		
		return Tlist;
	}

	@Override
	public ArrayList<Festival> selectFList(PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Festival> Flist = tfDao.selectFList(sqlSession, pi);
		
		sqlSession.close();
		
		return Flist;
	}

	//좋아요 기능
	@Override
	public void likeTour(int tourNo) {
		SqlSession sqlSession = Template.getSqlSession();
		try {
			tfDao.increaseTourLike(sqlSession, tourNo);
			sqlSession.commit();
		}catch (Exception e) {
	        sqlSession.rollback(); // 오류 발생 시 롤백
	        e.printStackTrace(); // 예외 로그
	    } finally {
	        sqlSession.close();
	    }
	}

	@Override
	public void unlikeTour(int tourNo) {
		SqlSession sqlSession = Template.getSqlSession();
		try {
			tfDao.decreaseTourLike(sqlSession, tourNo);
			sqlSession.commit();
		}finally {
			sqlSession.close();
		}
	}

}
