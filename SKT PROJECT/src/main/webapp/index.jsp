<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="common.PageInfo, java.util.ArrayList, com.skt.board.model.vo.Board"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>커뮤니티</title>

<!-- Latest compiled and minified CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet" href="../menubar footer/menubar.css">
<link rel="stylesheet" href="./mainPage.css">

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
	integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=3643b6hh5b"></script>
</head>
<body>
	<jsp:include page="/views/common/menubar.jsp" />

	<div class="container">
		<div id="media-section">
			<div id="title">
				<span class="title-font">영상으로 즐기는 계절 축제</span>
			</div>

			<div class="hiperlink-container">
				<div class="hiperlink">
					<iframe class="media" width="410" height="225"
						src="https://www.youtube.com/embed/zPNwGulo3ts?si=3eFTPjG2E9MIJb50"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

					<iframe class="media" width="410" height="225"
						src="https://www.youtube.com/embed/xyh_0wTokh8?si=tlyUCt6h4kHTYXeu"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
				</div>

				<div class="hiperlink">
					<iframe class="media" width="410" height="225"
						src="https://www.youtube.com/embed/zPNwGulo3ts?si=3eFTPjG2E9MIJb50"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

					<iframe class="media" width="410" height="225"
						src="https://www.youtube.com/embed/xyh_0wTokh8?si=tlyUCt6h4kHTYXeu"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
				</div>
			</div>
		</div>
		<br> <br>
		<div class="map-sidebar-container">
			<!-- 지도 영역 -->
			<div id="map"></div>

			<!-- 관광 명소 리스트 영역 -->
			<div class="sidebar">
				<h2 align="center" style="font-weight: 800;">인기 관광 명소</h2>
				<!-- 인기 관광 명소 리스트 -->
				 <ul id="topTouristsList"></ul>
				<div class="footer-link">
					<a href="#">계절별 관광지 보러가기 &gt;</a>
				</div>
			</div>
		</div>
		<!-- 계절별 관광지 보기 링크 -->

		<div class="tab_content">
			<input type="radio" name="tabmenu" id="tab01"> <label
				for="tab01">추천 관광명소</label> <input type="radio" name="tabmenu"
				id="tab02" checked> <label for="tab02">인기축제</label> <input
				type="radio" name="tabmenu" id="tab03"> <label for="tab03">축제
				MBTI</label> <input type="radio" name="tabmenu" id="tab04"> <label
				for="tab04">지역 룰렛</label>

			<div class="conbox con1">
			<br>
				<h1>이달의 추천 관광명소</h1>
				<div id="pop-tour">
				</div>
			</div>
			<div class="conbox con2">
            <div class="group">
                
              </div>
        </div>
        <script src='https://unpkg.co/gsap@3/dist/gsap.min.js'></script>
        <script  src="./content02.js"></script>
        <div class="conbox con3">
        	<br>
            <div id="test-img"></div>
            <h1>나와 맞는 축제는?</h1>
           <button onclick="location.href='<%=contextPath %>/views/sub/festivalMBTI.jsp'">축제 MBTI 하러 가기</button>
        </div>
        <div class="conbox con4">
            <h1>어디로 떠나야할 지 모를 때?</h1>
            <button onclick="getRandomArea()">지역 룰렛 돌리기</button>
            <div id="area-result">
                <p id="area-text"></p><h1> 가자!</h1>
            </div>
        </div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<div id="bottom-section" align="center">
			<h1 style="font-size: 80px; font-weight: bold; margin-right: 300px">로그인하고 축제 예매까지</h1><br>
			<button id="bottom-login-btn" style="margin-right: 300px; background-color: #00B4D8;
					width: 600px; height: 75px; color: white; border-radius: 10px; font-size: 30px; border-style: none;">로그인</button>
		</div>
		</div>
	</div>
	<br>
	<script  src="./mainPage.js"></script>
	 <script>
        $(document).ready(function(){
        	var allTourists = [];
            $.ajax({
                url: "touristRank.mp",
                method: "GET",
                dataType: "json",
                success: function(data) {
                    var list = $('#topTouristsList');
                    list.empty(); // 기존 리스트 비우기

                    // 첫 6개 데이터만 출력
                    var topSixTourists = data.slice(0, 6); // 데이터의 첫 6개 항목 선택
					var number = 1;
                    
                    topSixTourists.forEach(function(tourist) {
                        list.append('<li class="tour-li-item">' + number + ". "+ tourist.tourName + '</li>'); // TOUR_NAME 출력
                        number = number + 1;
                    });
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.error('Error fetching top tourists:', textStatus, errorThrown);
                }
            });
            
            $.ajax({
                url: "touristRankTwo.mp",
                method: "GET",
                dataType: "json",
                success: function(data) {
                    // 데이터 병합
                    allTourists = allTourists.concat(data.slice(0, 4)); // 첫 4개 데이터 추가
                    updateTourDisplay();
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.error('Error fetching top tourists:', textStatus, errorThrown);
                }
            });

            // 투어 이름을 업데이트하는 함수
            function updateTourDisplay() {
                var popTourDiv = $('#pop-tour');
                popTourDiv.empty(); // 기존 내용 비우기

                allTourists.slice(0, 4).forEach(function(tourist, index) {
                    // 조건문을 사용하여 첫 번째, 두 번째, 세 번째, 네 번째 경우를 다르게 처리
                    if (index === 0) {
                        popTourDiv.append('<div id="first-tour" class="item-01" style="height: 40%;"><div class="up-line01"  style="height: 200px;"> <div class="photo01"><img src="./img/tour-01.png" height="250px"></div><div class="desc01"><h1>' + tourist.tourTema + '</h1><br><h3>' + tourist.tourName + '</h3><br><h5>' + tourist.tourSeason + '</h5></div> </div><div class="under-line01"></div></div>');
                    } else if (index === 1) {
                    	popTourDiv.append('<div id="second-tour" class="item-01" style="height: 40%;"><div class="up-line01" style="height: 200px;"> <div class="photo01"><img src="./img/tour-01.png" height="250px"></div><div class="desc01"><h1>' + tourist.tourTema + '</h1><br><h3>' + tourist.tourName + '</h3><br><h5>' + tourist.tourSeason + '</h5></div> </div><div class="under-line01"></div></div>');
                    } else if (index === 2) {
                    	popTourDiv.append('<div id="third-tour" class="item-02" style="height: 40%;"><div class="up-line02" style="height: 200px;"> <div class="photo02"><img src="./img/tour-02.png" height="250px"></div><div class="desc02"><h1>' + tourist.tourTema + '</h1><br><h3>' + tourist.tourName + '</h3><br><h5>' + tourist.tourSeason + '</h5></div> </div><div class="under-line02"></div></div>');
                    } else if (index === 3) {
                    	popTourDiv.append('<div id="fourth-tour" class="item-02" style="height: 40%;"><div class="up-line02" style="height: 200px;"> <div class="photo02"><img src="./img/tour-02.png" height="250px"></div><div class="desc02"><h1>' + tourist.tourTema + '</h1><br><h3>' + tourist.tourName + '</h3><br><h5>' + tourist.tourSeason + '</h5></div> </div><div class="under-line02"></div></div>');
                    }
                });
            }
            
            $.ajax({
                url: "festivalIntro.mp",
                method: "GET",
                dataType: "json",
                success: function(data) {
                    var list = $('.group');
                    list.empty(); // 기존 리스트 비우기

                    // 첫 6개 데이터만 출력
                    var topFourFestivals = data.slice(0, 4); // 데이터의 첫 6개 항목 선택

                    topFourFestivals.forEach(function(festival) {
                        list.append('<div class="item"><div class="img-con"></div><div class="text-con"><h1>' + festival.fsName + '</h1><h3>' + festival.fsArea + '</h3><h5>'+ festival.fsTema +'</h5></div> </div>'); // TOUR_NAME 출력
                    });
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.error('Error fetching top tourists:', textStatus, errorThrown);
                }
            });
        });
        
        document.getElementById("bottom-login-btn").addEventListener("click", function() {
            location.href = "<%= contextPath %>/views/login/login.jsp";
        });
        
        const areas = [
        	"서울로",
        	"부산으로",
        	"제주도로",
        	"강릉으로",
        	"경주로",
        	"전주로",
        	"대구로",
        	"인천으로",
        	"광주로",
        	"포항으로"];

        function getRandomArea() {
        	const randomIndex = Math.floor(Math.random() * areas.length);
        	const selectedArea = areas[randomIndex];
        	document.getElementById("area-text").innerText = selectedArea;
        }
        
        $(document).on('click', '.tour-li-item', function() {
            // 모든 <li>의 글씨를 기본 상태로 설정
            $('.tour-li-item').css('font-weight', 'normal');
            
            // 클릭한 <li>의 글씨만 굵게 설정
            $(this).css('font-weight', '800');
        });
        
        window.onload = function() {
            if (typeof naver !== 'undefined') {
        	console.log(naver);
                // naver 객체 사용 코드
                var map = new naver.maps.Map('map', {
                    center: new naver.maps.LatLng(37.3595704, 127.105399),
                    zoom: 10
                });
            } else {
                console.error('네이버 지도 API가 로드되지 않았습니다.');
            }
        };
    </script>


</body>
</html>