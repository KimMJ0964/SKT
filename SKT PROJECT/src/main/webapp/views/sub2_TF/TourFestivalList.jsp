<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./views/sub2_TF/TourFestivalList.css">
</head>
<body>
	<jsp:include page="/views/common/menubar.jsp" />
    <div class="wrap">
        <div id="search-form">
            <table>
                <tr>
                    <th><p>지역별</p></th>
                    <td>
                        <select name="addressRegion" id="addressRegion1" name="color" class="area1"></select>
                        <select name="addressDo" id="addressDo1" name="color" class="area1"></select>
                        <select name="addressSiGunGu" id="addressSiGunGu1" name="color" class="area1">
                    </td>
                </tr>
                <tr>
                    <th><p>계절별</p></th>
                    <td>
                        <div class="season">
                            <input type="checkbox" name="spring" id="spring" value="spring">
                            <label for="spring">#봄</label>
                            <input type="checkbox" name="summer" id="summer" value="summer">
                            <label for="summer">#여름</label>
                            <input type="checkbox" name="fall" id="fall" value="fall">
                            <label for="fall">#가을</label>
                            <input type="checkbox" name="winter" id="winter" value="winter">
                            <label for="winter">#겨울</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th><p>테마별</p></th>
                    <td>
                        <div class="tema">
                            <input type="checkbox" name="history" id="history" value="history">
                            <label for="history">#역사</label>
                            <input type="checkbox" name="city" id="city" value="city">
                            <label for="city">#도시</label>
                            <input type="checkbox" name="natural" id="natural" value="natural">
                            <label for="natural">#자연</label>
                            <input type="checkbox" name="art" id="art" value="art">
                            <label for="art">#예술</label>
                            <input type="checkbox" name="healling" id="healling" value="healling">
                            <label for="healling">#힐링</label>
                            <input type="checkbox" name="dynamic" id="dynamic" value="dynamic">
                            <label for="dynamic">#다이나믹</label>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="./views/sub2_TF/TourFestivalList-area.js"></script>
           <div id="search">
                <input type="submit" value="검색">
           </div>
        
           <div class="content2">
            <input type="radio" name="content-tour" id="ct" checked>
            <label for="ct">관광지</label>
            <input type="radio" name="content-tour" id="cf">
            <label for="cf">축제</label>
        </div>
        
        <div id="content-box" style="height: fit-content;">
            <div class="list-box" id="tour-content">
            <c:forEach var="t" items="${Tlist}">
                <div id="list-con">
                    <div id="list-img"><img src="./views/resource/tour/tourThumbnail/${ t.tourImg}" style="height: 300px; width: 300px;"></div>
                    <h3>${t.tourName}</h3>
                    <div id="under-area">
                        <h5>${t.tourArea}</h5>
                        <button type="button" onclick="toggleLike(${t.tourNo}, this)">
						    <img src="./views/sub2_TF/img/Like.png" id="like-img-${t.tourNo}">
						</button>
                    </div>
                </div>
            </c:forEach>         
            </div>
            <script>
	            function toggleLike(tourNo, button) {
	                const likeImg = button.querySelector('img'); // 버튼 내의 이미지 요소
	                const isLiked = likeImg.src.includes("Like_r.png"); // 현재 상태 확인
	
	                const action = isLiked ? "unlike" : "like"; // 상태에 따라 액션 설정
	
	                $.ajax({
	                    url: '/skt/tourfestivallist.tf', // 요청할 URL
	                    method: 'POST', // 요청 방식
	                    data: { action: action, tourNo: tourNo }, // 전달할 데이터
	                    success: function(response) {
	                        // 서버 응답이 성공하면 이미지 변경
	                        likeImg.src = isLiked ? "./views/sub2_TF/img/Like.png" : "./views/sub2_TF/img/Like_r.png";
	                    },
	                    error: function() {
	                        alert('좋아요 상태를 변경하는 데 실패했습니다.');
	                    }
	                });
	            }
            </script>
        
            <div class="list-box" id="festival-content" style="display: none;">
            <c:forEach var="f" items="${Flist}">
                <div id="list-con">
                    <div id="list-img"><img src="./views/resource/festival/${ f.fsImg}" style="height: 300px; width: 300px;"></div>
                    <h3>${f.fsName}</h3>
                    <div id="under-area">
                        <h5>${f.fsArea}</h5>
                        <button type="button">
                            <img src="./views/sub2_TF/img/Like.png" class="like(this)" onclick="like(this)">
                        </button>
                    </div>
                </div>
            </c:forEach>
            </div>
        </div>
    
        <script>
            // 탭 변경 시 내용 업데이트
            document.querySelectorAll('input[name="content-tour"]').forEach((radio) => {
                radio.addEventListener('change', () => {
                    const isTourChecked = document.getElementById('ct').checked;
                    document.getElementById('tour-content').style.display = isTourChecked ? 'flex' : 'none';
                    document.getElementById('festival-content').style.display = isTourChecked ? 'none' : 'flex';
                });
            });
    
            // // 좋아요 버튼 클릭 시 해당 이미지 변경
            // function like(element) {
            //     if (element.src.includes("Like_r.png")) {
            //         element.src = "./views/sub2_TF/img/Like.png";
            //     } else {
            //         element.src = "./views/sub2_TF/img/Like_r.png";
            //     }
            // }
        </script>
    </div>
</body>
</html>