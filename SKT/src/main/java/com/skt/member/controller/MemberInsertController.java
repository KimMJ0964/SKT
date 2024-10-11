package com.skt.member.controller;

import java.io.IOException;

import com.skt.member.model.vo.Member;
import com.skt.member.service.MemberServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberInsertController
 */
@WebServlet(name = "insert.me", urlPatterns = { "/insert.me" })
public class MemberInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Member m = new Member(
								request.getParameter("memId"), //아이디
								request.getParameter("memPwd"), //비밀번호
								request.getParameter("memName"), //이름
								request.getParameter("phone"), //전화번호
								request.getParameter("address"), //주소
								request.getParameter("memNo"), //주민등록번호
								request.getParameter("email") //이메일
							 );
		
		int result = new MemberServiceImpl().insertMember(m);
		// 사용자가 입력한 정보가 데이터 베이스로 성공적으로 넘어갈 시 1, 실패시 0
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath());
		}else {
			request.setAttribute("errorMsg", "회원가입 실패");
			request.getRequestDispatcher("views/common/errorpage.jsp").forward(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
