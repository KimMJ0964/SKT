package com.skt.tourfestival.service;

import java.util.ArrayList;

import com.skt.tourfestival.model.vo.Tour;

import common.PageInfo;

public interface TourFestivalService {
	// 리스트 조회
	int selectListCount();
	ArrayList<Tour> selectList(PageInfo pi);
	
}
