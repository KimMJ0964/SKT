package com.skt.course.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
<<<<<<< HEAD
import java.util.ArrayList;

import com.skt.course.model.vo.Course;
import com.skt.course.model.vo.SubCourse;
import com.skt.course.service.CourseServiceImpl;
import com.skt.course.service.CourseService;
=======
>>>>>>> a29a27fd9db28423151b6955658271143303907e

public class courseDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public courseDetailController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
<<<<<<< HEAD
//		int courseNo = Integer.parseInt(request.getParameter("cno"));
		
		CourseService courseService = new CourseServiceImpl();
		
		ArrayList<SubCourse> courseList = courseService.selectSubCourse(1);
		
		System.out.println(courseList);
		request.setAttribute("courseList", courseList);
		
		if(courseList != null) {
			request.getRequestDispatcher("views/course/sub_course_detail.jsp").forward(request, response);
		} else {
			request.setAttribute("errorMsg", "상세조회 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		
		}
=======
		int courseNo = Integer.parseInt(request.getParameter("cno"));
		
		
>>>>>>> a29a27fd9db28423151b6955658271143303907e
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
