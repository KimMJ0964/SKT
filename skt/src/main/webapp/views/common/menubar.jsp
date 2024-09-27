<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
    display: flex;
    justify-content: center;
    align-items: center;
    background: #DFF0FF;
}

.wrap{
    width: 1440px;
    background-color: #DFF0FF;
}

/*menubar*/
ul, li, ol {
    list-style: none;
    padding: 0px;
    margin: 0px;
}

a {
    text-decoration: none;
    color: black;
}



#navigator {
    margin-top: 20px;
    margin-left: 80px;
    width: 1280px;
    height: 90px;
       
    
}

#navi {
    border: solid none;
    background-color: white;
    height: 100%;
    border-radius: 30px;
    display: flex;
    justify-content: center;
    align-items: center;
}

#navi > li {
    float: left;
    width: 19%;
    text-align: center;
    height: 100%;
}

#navi a {
    font-size: 24px;
    font-weight: 900;
    width: 100%;
    height: 100%;
    display: block;
    line-height: 36px;
}

#menu1 {
    border: solid none;
    width: 55px;
    height: 55px;
    border-radius: 50%;
    background-color: #D9D9D9;
    margin-bottom: 55px;
    margin-right: 28px;
}

#menu2 {
    border: solid none;
    width: 55px;
    height: 55px;
    border-radius: 50%;
    background-color: #D9D9D9;
    margin-bottom: 55px;
    margin-right: 28px;
}

.content{
    margin-top: 60px;
}

.icon{
    width: 100px;  
    height: auto;
    margin-top: 10px;
}

#navi a:hover {
    color: #868686;
    scale: 1.08;
}

#navi>.content>ul {
    display: none;
    padding: 15px 0;
    margin-top: -20px;
    margin-left: 40px;
}

#navi>.content>ul a {
    font-size: 20px;
}

#navi>.content>a:hover+ul {
    display: block;
    width: 160px;
    text-align: center;
    border: solid #FFC2E2;
    background-color: white;
    position: relative;
    z-index: 1;
    border-radius: 40px;

}


#navi>.content>ul:hover {
    display: block;
    text-align: center;
    width: 160px;
    border: solid #FFC2E2;
    background-color: white;
    position: relative;
    z-index: 1;
    border-radius: 40px;
}
hr{
    width: 120px;
}

</style>
</head>
<body>
	 <div class="wrap">
        <div id="navigator">
            <ul id="navi">
                <li><img class="icon" src="views/common/img/logo_1.png" alt="없음"></li>
                <li class="content">
                    <a href="">명소찾기</a>
                    <ul>
                        <li><a href="">지역별</a></li>
                        <hr>
                        <li><a href="">테마별</a></li>
                    </ul>
                
                </li>
                <li class="content">
                    <a href="">축제</a>
                    <ul>
                        <li><a href="">MBTI</a></li>
                        <hr>
                        <li><a href="">계절별</a></li>
                        <hr>
                        <li><a href="">지역별</a></li>
                        <hr>
                        <li><a href="">테마별</a></li>
                    </ul>
                </li>
                <li class="content">
                    <a href="">여행코스</a>
                </li>
                <li class="content">
                    <a href="">커뮤니티</a>
                </li>

                <c:choose>
    			<c:when test="${ empty loginUser }">
		        <!-- 로그인전 -->
				<div id="menu1" class="content">
				<a href=""></a>
		        <ul>
                       <li><a onclick="location.href='views/login/login.jsp'">로그인</a></li>
                        <hr>
                        <li><a href="">회원가입</a></li>
                    </ul>
                 </div>
                  </c:when>
		        <c:otherwise>
		        <!-- 로그인후 -->
		        <div id="menu2" class="content">
		        <a href=""></a>
                    <ul>
                        <li><a href="">마이페이지</a></li>
                        <hr>
                        <li><a href="">장바구니</a></li>
                        <hr>
                        <li><a href="">로그아웃</a></li>
                    </ul>
                </div>
                </c:otherwise>
                </c:choose>
            </ul>
        </div>
</body>
</html>