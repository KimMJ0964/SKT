<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String contextPath = request.getContextPath(); %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=76866882cd1c7abce63c8500e8a8c7bb"></script>
    <link rel="stylesheet" href="<%=contextPath%>/views/course/css/sub_course_detail.css?after">
    <link rel="stylesheet" href="<%=contextPath%>/views/course/css/index.css?after">
</head>
<body>
<div class="info-con">
        <div id="map-con">
            <p>코스 이름</p>
            <div id="map">
                
            </div>
        </div>
        <div id="course-info">
            <div id="course_line1">
                    
            </div>
            <ul>
                <li>
                    <div class="dot-con first-dot">
                        <div class="dot"></div>
                        <p class="click">보석 박물관</p>
                        <div class="text-desc">
                            <img src="<%=contextPath%>/views/sub_course/img/museum.png">
                        </div>
                    </div>
                </li>
                <li>
                    <div class="dot-con">
                        <div class="dot first-dot"></div>
                        <p class="click">본향</p>
                        <div class="text-desc">
                            <img src="<%=contextPath%>/views/sub_course/img/museum.png">
                        </div>
                    </div>
                </li>
                <li>
                    <div class="dot-con">
                        <div class="dot first-dot"></div>
                        <p class="click">익산 왕궁리 유적</p>
                        <div class="text-desc">
                            <img src="<%=contextPath%>/views/sub_course/img/museum.png">
                        </div>
                    </div>
                </li>
                <li>
                    <div class="dot-con">
                        <div class="dot first-dot"></div>
                        <p class="click">웨스턴 라이프 호텔</p>
                        <div class="text-desc">
                            <img src="<%=contextPath%>/views/sub_course/img/museum.png">
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div id="like-btn">
        <button>+ 관심등록 하기</button>
    </div>

	<script>
		var container = document.getElementById('map');  // 지도를 표시할 div 
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level: 3 // 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(container, options); // 지도를 생성합니다
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		  mapOption = { 
		        center: new kakao.maps.LatLng(37.54699, 127.09598), // 지도의 중심좌표
		        level: 4 // 지도의 확대 레벨
		    };

		var map = new kakao.maps.Map(mapContainer, mapOption);

		var imageSrc = '<%=contextPath%>/views/sub_course/img/free-icon-location-5583006.png', // 마커이미지의 주소입니다    
		    imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
		    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

		// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
		    markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		  position: markerPosition,
		  image: markerImage // 마커이미지 설정 
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);  


		// 커스텀 오버레이가 표시될 위치입니다 
		var position = new kakao.maps.LatLng(37.54699, 127.09598);  

		// 커스텀 오버레이를 생성합니다
		var customOverlay = new kakao.maps.CustomOverlay({
		    map: map,
		    position: position,
		    content: content,
		    yAnchor: 1 
		});
		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null);    
	</script>
</body>
</html>