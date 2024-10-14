package com.skt.member.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.skt.member.model.vo.Interested;
import com.skt.member.model.vo.Member;
import com.skt.member.service.MemberService;
import com.skt.member.service.MemberServiceImpl;

public class myPageInterestedFestivalDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public myPageInterestedFestivalDeleteController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int fsNoStr = Integer.parseInt(request.getParameter("fsNo"));

		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		String loginValue = loginUser.getMemId();
		
		Interested interested = new Interested(loginValue, 0, fsNoStr, 0);
		
		MemberService memberService = new MemberServiceImpl();
		int result = memberService.deleteInterestedFestival(interested);
		
		// 결과에 따라 응답 전송
	    response.setContentType("text/plain");
	    PrintWriter out = response.getWriter();
	    
	    if (result > 0) {
	    	response.sendRedirect(request.getContextPath() + "/myPageTest.me");
	        out.write("success");  // 성공 시 "success" 문자열 전송
	    } else {
	        out.write("fail");  // 실패 시 "fail" 문자열 전송
	    }

	    out.flush();
	    out.close();
	    
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
