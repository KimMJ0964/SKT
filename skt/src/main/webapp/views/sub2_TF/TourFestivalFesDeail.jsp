<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>축제 상세페이지</title>
    <link rel="stylesheet" href="./views/sub2_TF/css/TourFestivalResDetail.css?after">
</head>
<body>
<jsp:include page="/views/common/menubar.jsp" />
    <div class="container">
        <div class="header">
            <img src="./resource/festival/${f.fsImg }" alt="축제 이미지" class="festival-image">
            <div class="festival-info">
                <h1>${f.fsName }</h1>
                <ul class="festival-details">
                    <li><img src="./views/sub2_TF/img/calendar.png" alt="기간" class="icon">${f.fsStart } ~ ${f.fsEnd }</li>
                    <li><img src="./views/sub2_TF/img/location.png" alt="위치" class="icon">${f.fsArea }</li>
                    <li><img src="./views/sub2_TF/img/link.png" alt="링크" class="icon">${f.fsUrl }</li>
                </ul>
            </div>
        </div>

        <div class="description" style="background: linear-gradient(rgba(255, 255, 255, 0.80), rgba(255, 255, 255, 0.80)), url(./views/sub2_TF/img/second.png);
    border-radius: 20px;">
            
            <p>${f.fsDct }</p>
        </div>

        

        
        
    </div>
</body>
</html>
