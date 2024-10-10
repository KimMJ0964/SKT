<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나만의 여행코스 만들기</title>
    <link rel="stylesheet" href="./mycourse.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.14.0/jquery-ui.min.js" integrity="sha256-Fb0zP4jE3JHqu+IBB9YktLcSjI1Zc6J2b6gTjB0LpoM=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
    <script src="./mycourse.js"></script>
</head> 
<body>
    <jsp:include page="/views/common/menubar.jsp" />
    <div class="wrap">
        <div class="planner">
            <div class="course-details" id="contentToSave"> <!-- ID 추가 -->
                <div class="course-header">
                    <h2><input type="text" placeholder="제목을 입력하세요"></h2>
                </div>
                <div class="plus">
                    <img src="./img/plusImg.png" alt="">
                </div>
                <div class="actions">
                    <!-- 추가 버튼들 -->
                </div>
            </div>

            <div class="preview-list">
                <h2>나의 관심목록</h2>
                <div class="preview-item">
                    <p>보석 박물관</p>
                    <img src="./img/tavleImg.png" alt="보석 박물관"> 
                </div>
                <!-- 나머지 항목들 -->
            </div>

            <!-- PDF로 저장 버튼 추가 -->
            <div class="content-footer">
                
            </div>
        </div>
    </div>
</body>


</html>
