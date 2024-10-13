package com.skt.course.service;

<<<<<<< HEAD
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.skt.board.model.dao.BoardDao;
import com.skt.course.model.dao.CourseDao;
import com.skt.course.model.vo.Course;
import com.skt.course.model.vo.SubCourse;

import common.Template;

public class CourseServiceImpl implements CourseService{

	private CourseDao cDao = new CourseDao();
	
	@Override
	public ArrayList<SubCourse> selectSubCourse(int courseNo) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<SubCourse> result = cDao.selectSubCourse(sqlSession, courseNo);
		
		sqlSession.close();
		return result;
	}
=======
public class CourseServiceImpl {
>>>>>>> a29a27fd9db28423151b6955658271143303907e

}
