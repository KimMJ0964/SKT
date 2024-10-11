package com.skt.tourfestival.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.skt.tourfestival.model.dao.TourFestivalDao;
import com.skt.tourfestival.model.vo.Tour;

import common.PageInfo;
import common.Template;

public class TourFestivalServiceImpl implements TourFestivalService{
	private TourFestivalDao tfDao = new TourFestivalDao();

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
		ArrayList<Tour> list = tfDao.selectList(sqlSession, pi);
		
		sqlSession.close();
		
		return list;
	}

}
