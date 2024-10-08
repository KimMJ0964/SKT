<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title> 

    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #ADE8F4;
        }
        .wrap {
            width: 1246px;
            margin: auto;
            padding: 20px;
        }
        #header {
            width: 1284px;
            height: 91px;
            background-color: white;
            border-radius: 30px;
            margin: 20px auto;
            box-shadow: 1px 1px 1px 1px rgb(203, 203, 203);
        }
        .container {
            display: flex;
            justify-content: space-around;
            margin: 50px auto;
            max-width: 1300px;
        }

        /* 프로필 섹션 */
        .profile-section {
            padding: 20px;
            width: 300px;
        }
        .profile-section .profile-image {
            width: 180px;
            height: 180px;
            border-radius: 50%;
            background-color: #E0F7FA;
            margin: 0 auto;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 18px;
            color: #6C83A8;
        }
        .profile-section .profile-info {
            margin-top: 20px;
            border: 1px solid #E0E0E0;
            border-radius: 10px;
            padding: 10px;
        }
        .profile-info {
            background-color: white;
            border-radius: 20px;
        }
        .profile-section .profile-info h6 {
            font-size: 18px;
            margin-bottom: 20px;
        }
        .profile-section .profile-info ul {
            list-style: none;
            padding: 0;
            font-size: 14px;
        }
        .profile-section .profile-info ul li {
            margin-bottom: 10px;
            display: flex;
            align-items: center;
        }
        .profile-section .profile-info ul li img {
            width: 20px;
            height: 20px;
            margin-right: 10px;
        }
        .profile-section .profile-buttons {
            text-align: center;
            margin-top: 20px;
        }
        .profile-section .profile-buttons button {
            width: 100%;
            margin-bottom: 10px;
        }

        /* 축제 섹션 */
        .interest-section {
            background-color: white;
            border-radius: 20px;
            padding: 20px;
            width: 600px;
            box-shadow: 1px 1px 5px 1px rgb(203, 203, 203);
        }
        .interest-section h5 {
            font-size: 22px;
            margin-bottom: 15px;
        }
        .interest-section .interest-list {
            list-style: none;
            padding: 0;
            max-height: 400px;
            overflow-y: auto;
        }
        .interest-section .interest-list li {
            background-color: #FAFAFA;
            border: 1px solid #E0E0E0;
            padding: 10px;
            margin-bottom: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-radius: 10px;
        }
        .interest-section .interest-list li .info {
            display: flex;
            gap: 15px;
            align-items: center;
        }
        .interest-section .interest-list li img {
            width: 80px;
            height: 50px;
            border-radius: 5px;
        }
        .interest-section .interest-list li .text {
            font-size: 16px;
        }
        .interest-section .interest-list li .remove {
            font-size: 18px;
            color: red;
            cursor: pointer;
        }

        /* 게시글, 댓글 섹션 */
        .posts-comments-section {
            background-color: white;
            border-radius: 20px;
            padding: 20px;
            width: 250px;
            box-shadow: 1px 1px 5px 1px rgb(203, 203, 203);
        }
        .posts-comments-section h5 {
            font-size: 18px;
            margin-bottom: 10px;
        }
        .posts-comments-section ul {
            list-style: none;
            padding: 0;
            font-size: 16px;
            max-height: 250px;
            overflow-y: auto;
        }
        .posts-comments-section ul li {
            padding: 10px;
            background-color: #FAFAFA;
            margin-bottom: 10px;
            border-radius: 10px;
        }
        .posts-comments-section .view-more {
            text-align: right;
            font-size: 14px;
            color: #6C83A8;
            cursor: pointer;
        }

        /* 모달창 */
        .modal {
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0,0,0,0.5);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .modal-content {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            width: 450px;
            left: 40%;
            top: 20%;
        }

        .modal-content > form > table > tr > td {
            text-align: left;
        }

        .close {
            float: right;
            font-size: 20px;
            cursor: pointer;
        }

        /* 모바일 반응형 */

        @media (max-width: 480px) {
            .wrap {
                padding: 5px;
            }
            .profile-section, .interest-section, .posts-comments-section {
                padding: 5px;
            }
            .profile-section .profile-image {
                width: 100px;
                height: 100px;
            }
            .interest-section .interest-list li .info img {
                width: 50px;
                height: 30px;
            }
            .posts-comments-section ul li {
                font-size: 12px;
            }
        }
    </style>

</head>
<body>
    <div id="header"></div>
    <div class="wrap">
        <div class="container">
            <!-- Profile Section -->
            <div class="profile-section">
                <div class="profile-image" style="border: 2px solid #6FBAFF;">프로필 사진</div>
                <div class="profile-info" style="border: 2px solid #6FBAFF;">
                    <h5 style="text-align: center;">내 정보</h5>
                    <hr>
                    <ul>
                        <li><img src="./img/profile-icon.png" alt="icon">아이디: test01</li>
                        <li><img src="./img/profile-icon.png" alt="icon">이름: 홍길동</li>
                        <li><img src="./img/profile-icon.png" alt="icon">전화번호: 010-1234-5678</li>
                        <li><img src="./img/profile-icon.png" alt="icon">주소: 서울특별시</li>
                        <li><img src="./img/profile-icon.png" alt="icon">주민등록번호: 123456-1234567</li>
                        <li><img src="./img/profile-icon.png" alt="icon">이메일: test@example.com</li>
                    </ul>
                    <div class="profile-buttons">
                        <button class="btn btn-primary" id="edit-profile-btn">수정하기</button>
                        <button class="btn btn-secondary" id="edit-pwd-btn">비밀번호 변경</button>
                        <button class="btn btn-danger" id="delete-account-btn">회원탈퇴</button>
                    </div>
                </div>
            </div>
        
            <!-- Interest Section -->
            <div class="interest-section">
                <h5>관심등록</h5>
                <ul class="interest-list">
                    <li>
                        <div class="info">
                            <img src="festival.jpg" alt="축제 이미지">
                            <div class="text">
                                <strong>2024 영동 곶감 축제</strong><br>
                                2024.12.05<br>
                                1인당 7500원
                            </div>
                        </div>
                        <div class="remove">&times;</div>
                    </li>
                    <li>
                        <div class="info">
                            <img src="festival.jpg" alt="축제 이미지">
                            <div class="text">
                                <strong>2024 영동 곶감 축제</strong><br>
                                2024.12.05<br>
                                1인당 7500원
                            </div>
                        </div>
                        <div class="remove">&times;</div>
                    </li>
                    <li>
                        <div class="info">
                            <img src="festival.jpg" alt="축제 이미지">
                            <div class="text">
                                <strong>2024 영동 곶감 축제</strong><br>
                                2024.12.05<br>
                                1인당 7500원
                            </div>
                        </div>
                        <div class="remove">&times;</div>
                    </li>

                    <!-- More items -->
                </ul>
            </div>
        
            <!-- Posts and Comments Section -->
            <div class="posts-comments-section">
                <div class="posts-comments-container">
                    <!-- My Posts Section -->
                    <div class="posts-section">
                        <h5>내 게시글</h5>
                        <ul>
                            <li>게시글 1</li>
                            <li>게시글 2</li>
                            <li>게시글 3</li>
                            <li>게시글 1</li>
                            <li>게시글 2</li>
                            <li>게시글 3</li>
                            <!-- More posts -->
                        </ul>
                        <div class="view-more">더 보기</div>
                    </div>

                    <!-- My Comments Section -->
                    <div class="comments-section">
                        <h5>내 댓글</h5>
                        <ul>
                            <li>댓글 1</li>
                            <li>댓글 2</li>
                            <li>댓글 3</li>
                            <li>댓글 1</li>
                            <li>댓글 2</li>
                            <li>댓글 3</li>
                            <!-- More comments -->
                        </ul>
                        <div class="view-more">더 보기</div>
                    </div>
                </div>
            </div>
    </div>

    <!-- 모달 구조 -->
    <div class="modal" id="editProfileModal" style="display:none;">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h2>프로필 수정</h2>
            <br>
            <form>
                <table>
                    <tr>
                        <td style="width: 130px;">
                            <label for="name">이름:</label>
                        </td>
                        <td>
                            <input type="text" id="name" name="name" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="phone">전화번호:</label>
                        </td>
                        <td>
                            <input type="text" id="phone" name="phone" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="address">주소:</label>
                        </td>
                        <td>
                            <input type="text" id="address" name="address" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="ssn">주민등록번호:</label>
                        </td>
                        <td>
                            <input type="text" id="ssn" name="ssn" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="email">이메일:</label>
                        </td>
                        <td>
                            <input type="text" id="email" name="email" required> @
                            <select id="email-domain" name="email-domain">
                                <option value="gmail.com">@gmail.com</option>
                                <option value="naver.com">@naver.com</option>
                                <option value="daum.net">@daum.net</option>
                                <option value="custom">직접 입력</option>
                            </select>
                            <input type="text" id="custom-domain" name="custom-domain" style="display:none;" placeholder="직접 입력">
                        </td>
                    </tr>
                </table>
                <br>
                <button type="submit" class="btn btn-primary">저장하기</button>
            </form>
        </div>
    </div>

    <script>
        document.getElementById("delete-account-btn").addEventListener("click", function() {
            if (confirm("정말로 회원탈퇴를 진행하시겠습니까?")) {
                // 네
                alert("회원탈퇴가 진행됩니다.");
            } else {
                // 아니요
                alert("회원탈퇴가 취소되었습니다.");
            }
        });

        // 모달 열기 및 닫기 로직
        var modal = document.getElementById("editProfileModal");
        var btn = document.getElementById("edit-profile-btn");
        var span = document.getElementsByClassName("close")[0];

        btn.onclick = function() {
            modal.style.display = "block";
        }

        span.onclick = function() {
            modal.style.display = "none";
        }

        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

        // 이메일 도메인 선택 시 처리
        var emailDomainSelect = document.getElementById("email-domain");
        var customDomainInput = document.getElementById("custom-domain");

        emailDomainSelect.onchange = function() {
            if (emailDomainSelect.value === "custom") {
                customDomainInput.style.display = "inline-block";
            } else {
                customDomainInput.style.display = "none";
                customDomainInput.value = ""; // 입력 필드를 초기화
            }
        }
    </script>
</body>
</html>