package com.skt.course.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.skt.course.model.vo.Course;
import com.skt.course.model.vo.SubCourse;

public class CourseDao {
	public ArrayList<SubCourse> selectSubCourse(SqlSession sqlSession, int courseNo) {
		return (ArrayList)sqlSession.selectList("courseMapper.selectSubCourse", courseNo);
	}
}
