<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
=======
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
>>>>>>> a29a27fd9db28423151b6955658271143303907e
<% String contextPath = request.getContextPath(); %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=3643b6hh5b"></script>
<link rel="stylesheet"
	href="<%=contextPath%>/views/course/css/sub_course_detail.css?after">
<link rel="stylesheet"
	href="<%=contextPath%>/views/course/css/index.css?after">
	
</head>
<body>
<jsp:include page="/views/common/menubar.jsp" />
<br><br><br><br><br><br>
	<div class="info-con">
		<div id="map-con">
			<p>코스 이름</p>
			<div id="map"></div>
		</div>
		<div id="course-info">
			<div id="course_line1"></div>
			<ul>
				<c:forEach var="course" items="${courseList}">
            <li>
                <div class="dot-con first-dot">
                    <div class="dot"></div>

                    <!-- TOUR_NAME 또는 FS_NAME 출력 -->
                    <p class="click">
                        <c:choose>
                            <c:when test="${course.tourName != null}">
                                ${course.tourName} <!-- TOUR_NAME 출력 -->
                            </c:when>
                            <c:when test="${course.fsName != null}">
                                ${course.fsName} <!-- FS_NAME 출력 -->
                            </c:when>
                        </c:choose>
                    </p>

                    <!-- 이미지 출력 -->
                    <div class="text-desc">
                        <c:choose>
                            <c:when test="${course.tourImg != null}">
                                <img src="<%=contextPath%>/resource/tourThumb/${course.tourImg}" alt="Tour Image" style="width: 200px;"/>
                            </c:when>
                            <c:when test="${course.fsImg != null}">
                                <img src="<%=contextPath%>/resource/festival/${course.fsImg}" alt="Festival Image" style="height: 200px;"/>
                            </c:when>
                        </c:choose>
                    </div>

                    <!-- 위도와 경도 출력 -->
                    <p>Latitude: 
                        <c:choose>
                            <c:when test="${course.tourLat != 0.0}">
                                ${course.tourLat} <!-- TOUR_LAT 출력 -->
                            </c:when>
                            <c:when test="${course.fsLat != 0.0}">
                                ${course.fsLat} <!-- FS_LAT 출력 -->
                            </c:when>
                        </c:choose>
                    </p>

                    <p>Longitude: 
                        <c:choose>
                            <c:when test="${course.tourLong != 0.0}">
                                ${course.tourLong} <!-- TOUR_LONG 출력 -->
                            </c:when>
                            <c:when test="${course.fsLong != 0.0}">
                                ${course.fsLong} <!-- FS_LONG 출력 -->
                            </c:when>
                        </c:choose>
                    </p>
                </div>
            </li>
        </c:forEach>


				<!--    <li>
=======
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
>>>>>>> a29a27fd9db28423151b6955658271143303907e
                    <div class="dot-con">
                        <div class="dot first-dot"></div>
                        <p class="click">웨스턴 라이프 호텔</p>
                        <div class="text-desc">
                            <img src="<%=contextPath%>/views/sub_course/img/museum.png">
                        </div>
                    </div>
<<<<<<< HEAD
                </li> -->
			</ul>
		</div>
	</div>
	<div id="like-btn">
		<button>+ 관심등록 하기</button>
	</div>
<br><br><br><br><br><br>
<jsp:include page="/views/common/footer.jsp" />

	<script>
	var map = new naver.maps.Map('map', {
        center: new naver.maps.LatLng(37.5665, 126.9780),  // 초기 좌표 (서울)
        zoom: 15
    });

    var markers = []; // 마커 배열
    var coordinates = []; // 좌표 배열

    // JSP에서 전달된 위도와 경도를 반복하여 마커와 폴리라인 좌표 추가
    <c:forEach var="course" items="${courseList}" varStatus="status">
        <c:choose>
            <c:when test="${course.tourLat != 0.0}">
                var marker = new naver.maps.Marker({
                    position: new naver.maps.LatLng(${course.tourLat}, ${course.tourLong}),
                    map: map,
                    label: {
                        content: String(${status.index + 1}), // 숫자 표시
                        color: '#000', // 텍스트 색상
                        fontSize: '14px', // 텍스트 크기
                        backgroundColor: '#fff', // 배경색
                        borderRadius: '50%', // 둥근 배경
                        padding: '4px' // 패딩
                    }
                });
                markers.push(marker);  // 마커 저장
                coordinates.push(new naver.maps.LatLng(${course.tourLat}, ${course.tourLong}));  // 좌표 저장
            </c:when>
            <c:when test="${course.fsLat != 0.0}">
                var marker = new naver.maps.Marker({
                    position: new naver.maps.LatLng(${course.fsLat}, ${course.fsLong}),
                    map: map,
                    label: {
                        content: String(${status.index + 1}), // 숫자 표시
                        color: '#000', // 텍스트 색상
                        fontSize: '14px', // 텍스트 크기
                        backgroundColor: '#fff', // 배경색
                        borderRadius: '50%', // 둥근 배경
                        padding: '4px' // 패딩
                    }
                });
                markers.push(marker);  // 마커 저장
                coordinates.push(new naver.maps.LatLng(${course.fsLat}, ${course.fsLong}));  // 좌표 저장
            </c:when>
        </c:choose>
    </c:forEach>

    // 마커를 이어주는 폴리라인 추가
    var polyline = new naver.maps.Polyline({
        path: coordinates, // 좌표 배열을 경로로 설정
        strokeColor: '#5347AA', // 선 색깔
        strokeWeight: 3, // 선 두께
        map: map
    });

    // 지도 중심을 첫번째 마커로 설정
    if (markers.length > 0) {
        map.setCenter(markers[0].getPosition());
    }
=======
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
>>>>>>> a29a27fd9db28423151b6955658271143303907e
	</script>
</body>
</html>