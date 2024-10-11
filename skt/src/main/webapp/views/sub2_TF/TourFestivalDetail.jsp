<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관광지 세부페이지</title>
    <link rel="stylesheet" href="./views/sub2_TF/css/TourFestivalDetail.css?after"></head>
<body>
<jsp:include page="/views/common/menubar.jsp" />
    <div class="container">
        <div class="banner">
            <img src="./resource/tour/${t.tourThumbnail}">
        </div>

        <div class="second-content">
            <img src="./resource/tourThumb/${t.tourImg}">
            <span>
                <h3>${t.tourName}</h3>
                <p>${t.tourArea}</p>
                <h4>#${t.tourTema}</h4> <br>
                <h4>#${t.tourSeason}</h4>
            </span>
        </div>
        
        <!-- 
        <div class="third-content">
            <h2>찾아오시는 길</h2>
            <div class="third-content-sub">
                <img src="./img/map.png" alt="" id="mapimg">
                <span>
                    <div class="spanTag">
                    <img src="./img/carIcon.png" alt="">
                    <p>어쩌구 주차장</p>
                    </div> <br>
                    <hr>

                    <div class="spanTag">
                    <img src="./img/trainIcon.png" alt="">
                    <p>어쩌구 역</p> 
                    </div><br>
                    <hr>

                    <div class="spanTag">
                    <img src="./img/busIcon.png" alt="">
                    <p>시내버스 : 8번 ,13번, 33번 (ㅇㅇ하차)</p>
                    </div>
                </span>
            </div>

        </div>
 -->

    </div>
</body>
</html>