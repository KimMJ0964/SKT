package com.skt.tourfestival.controller;

import java.io.IOException;
import java.util.ArrayList;

import com.skt.tourfestival.model.vo.Tour;
import com.skt.tourfestival.service.TourFestivalService;
import com.skt.tourfestival.service.TourFestivalServiceImpl;

import common.PageInfo;
import common.Template;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TourFestivalListController
 */
public class TourFestivalListController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // TourFestivalService 객체를 멤버 변수로 선언
    private TourFestivalService tourFestivalService;

    // 생성자에서 Service 객체를 초기화
    public TourFestivalListController() {
        super();
        this.tourFestivalService = new TourFestivalServiceImpl(); // 구현체 사용
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TourFestivalService tfService = new TourFestivalServiceImpl();
        
        //페이징 처리
        int currentPage = Integer.parseInt(request.getParameter("cpage"));
        int listCount = tfService.selectListCount(); //총 게시글 수
        
        PageInfo pi = Template.getPageInfo(listCount, currentPage, 12, 3);
        
        ArrayList<Tour> list = tfService.selectList(pi);
        System.out.println(list);
        request.setAttribute("list", list);
        request.setAttribute("pi", pi);
        
        request.getRequestDispatcher("views/sub2_TF/TourFestivalList.jsp").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
