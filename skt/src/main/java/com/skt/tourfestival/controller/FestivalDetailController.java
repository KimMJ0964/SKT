package com.skt.tourfestival.controller;

<<<<<<< HEAD
=======
import jakarta.servlet.RequestDispatcher;
>>>>>>> a29a27fd9db28423151b6955658271143303907e
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
<<<<<<< HEAD

import java.io.IOException;
=======
import java.io.IOException;
import java.util.List;
>>>>>>> a29a27fd9db28423151b6955658271143303907e

import com.skt.festival.model.vo.Festival;
import com.skt.tourfestival.service.TourFestivalService;
import com.skt.tourfestival.service.TourFestivalServiceImpl;

/**
 * Servlet implementation class FestivalDetailController
 */
public class FestivalDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FestivalDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
<<<<<<< HEAD
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
=======
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
>>>>>>> a29a27fd9db28423151b6955658271143303907e
		
		TourFestivalService tfService = new TourFestivalServiceImpl();
		
				int fsNo = Integer.parseInt(request.getParameter("fno"));
				
				
				Festival f = tfService.fincreaseCount(fsNo);
				
				if(f != null) {
					request.setAttribute("f", f);
<<<<<<< HEAD
=======
			        
>>>>>>> a29a27fd9db28423151b6955658271143303907e
					request.getRequestDispatcher("views/sub2_TF/TourFestivalFesDeail.jsp").forward(request, response);
				}else {
					request.setAttribute("errorMsg", "상세조회 실패");
					request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
				}
<<<<<<< HEAD
=======
				
		        
		        
		        
>>>>>>> a29a27fd9db28423151b6955658271143303907e
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
