package com.skt.tourfestival.service;

import java.util.ArrayList;

import com.skt.tourfestival.model.vo.Festival;
import com.skt.tourfestival.model.vo.Tour;

import common.PageInfo;

public interface TourFestivalService {
	// 리스트 조회
	int selectListCount();
	ArrayList<Tour> selectList(PageInfo pi);
	ArrayList<Festival> selectFList(PageInfo pi);
	
	//좋아요 기능
	void likeTour(int tourNo);
	void unlikeTour(int tourNo);
	
}
