<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="<%=contextPath %>/views/login/login.css">
</head>
<body>
<jsp:include page="/views/common/menubar.jsp" /> 
	<div class="container">
    <form action="<%=contextPath %>/login.me" method="post">
         <img src="<%=contextPath %>/views/login/img/logo_1.png" alt="">
        <br>
        <input type="text" placeholder="아이디"  name="memId"><br>
        <input type="password" placeholder="비밀번호" name="memPwd"><br>
        <button type="submit" style="height: 50px;">로그인</button>
    </form>
    <div class="member">
    <a href="<%=contextPath %>/views/login/searchid.jsp"><b>아이디 찾기 | </b></a>
    <a href="<%=contextPath %>/views/login/searchPwd.jsp"><b>비밀번호 찾기</b></a>
    <br>
    <p id="memberp">아직 회원이 아니시라면 <b style="color: black;">회원가입</b></p>
    </div>
    </div>
</body>
</html>