<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="./css/sub2_festival.css?after">
</head>
<body>
    <div class="container">
        <div class="header">
            <img src="./img/main.png" alt="축제 이미지" class="festival-image">
            <div class="festival-info">
                <h1>${f.fsName}</h1>
                <ul class="festival-details">
                    <li><img src="./img/calendar.png" alt="기간" class="icon">${f.fsStart}</li>
                    <li><img src="./img/location.png" alt="위치" class="icon">${f.fsArea}</li>
                    <li><img src="./img/link.png" alt="링크" class="icon">${f.fsUrl}</li>
                </ul>
            </div>
        </div>

        <div class="description">
            <h2>축제 설명</h2>
            <p>${f.fsDct}</p>
        </div>

        <button class="interest-btn">관심 등록</button>

        <div class="similar-festivals">
            <h2>○○○○와 비슷한 축제</h2>
            <div class="festival-cards">
                <div class="festival-card">
                    <img src="./img/fes1.png" alt="축제 1">
                    <p>축제 이름</p>
                </div>
                <div class="festival-card">
                    <img src="./img/fes2.png" alt="축제 2">
                    <p>축제 이름</p>
                </div>
                <div class="festival-card">
                    <img src="./img/fes3.png" alt="축제 3">
                    <p>축제 이름</p>
                </div>
                <div class="festival-card">
                    <img src="./img/fes4.png" alt="축제 4">
                    <p>축제 이름</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>